package game
import "core:fmt"
import rl "vendor:raylib"

Animation_Name :: enum {
	Idle,
	Run,
}

Animation :: struct {
	texture:       rl.Texture2D,
	num_frames:    int,
	frame_timer:   f32,
	current_frame: int,
	frame_length:  f32,
	name:          Animation_Name,
}

handle_input :: proc(p: ^Player) {
	if rl.IsKeyDown(.LEFT) {
		p.vel.x = -400
		p.flip = true

		if p.current_anim.name != .Run {
			p.current_anim = player_run
		}
	} else if rl.IsKeyDown(.RIGHT) {
		p.vel.x = 400
		p.flip = false

		if p.current_anim.name != .Run {
			p.current_anim = player_run
		}
	} else {
		p.vel.x = 0

		if p.current_anim.name != .Idle {
			p.current_anim = player_idle
		}
	}
}

update_player :: proc(p: ^Player, tiles: [dynamic]Tile) {
	p.vel.y += 2000 * rl.GetFrameTime()

	if p.grounded && rl.IsKeyPressed(.SPACE) {
		p.vel.y = -600
		p.grounded = false
	}
	old_pos := p.pos
	p.pos += p.vel * rl.GetFrameTime()
	for tile in tiles {

		if p.pos.x > tile.box.x &&
		   tile.box.x + tile.box.width >= p.pos.x &&
		   p.pos.y >= f32(tile.box.y) - 64 {
			p.pos.y = old_pos.y
			p.grounded = true
			break
		}
	}
	fmt.printf(
		"p.y: %v, tile.y: %v,  tile.height: %v\n",
		p.pos.y,
		tiles[0].box.y,
		tiles[0].box.height,
	)
}

update_animation :: proc(a: ^Animation) {
	a.frame_timer += rl.GetFrameTime()

	if a.frame_timer > a.frame_length {
		a.current_frame += 1
		a.frame_timer = 0

		if a.current_frame == a.num_frames {
			a.current_frame = 0
		}
	}
}

draw_animation :: proc(a: Animation, pos: rl.Vector2, flip: bool) {
	width := f32(a.texture.width)
	height := f32(a.texture.height)

	source := rl.Rectangle {
		x      = f32(a.current_frame) * width / f32(a.num_frames),
		y      = 0,
		width  = width / f32(a.num_frames),
		height = height,
	}

	if flip {
		source.width = -source.width
	}

	dest := rl.Rectangle {
		x      = pos.x,
		y      = pos.y,
		width  = width * 4 / f32(a.num_frames),
		height = height * 4,
	}

	rl.DrawTexturePro(a.texture, source, dest, 0, 0, rl.WHITE)
}

Player :: struct {
	pos:          rl.Vector2,
	vel:          rl.Vector2,
	grounded:     bool,
	flip:         bool,
	current_anim: Animation,
}
