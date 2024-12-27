package game

import "core:fmt"
import "core:math"
import rl "vendor:raylib"

player_run: Animation

player_idle: Animation

Tile :: struct {
	box:     rl.Rectangle,
	texture: rl.Rectangle,
}
main :: proc() {
	rl.InitWindow(1280, 720, "My First Game")
	rl.SetWindowPosition(30, 60)
	rl.SetTargetFPS(60)

	terrain_texture := rl.LoadTexture("terrain.png")

	grass_texture := rl.Rectangle {
		x      = 112,
		y      = 0,
		width  = 16,
		height = 16,
	}

	tile_length := i32(rl.GetScreenWidth() / 16)

	tiles: [dynamic]Tile
	for i in 0 ..< tile_length / 2 {
		append(
			&tiles,
			Tile {
				box = {f32(16 * f32(i)), f32(rl.GetScreenHeight() - 60), 16, 16},
				texture = grass_texture,
			},
		)
	}
	fmt.println(tile_length, tile_length / 2, len(tiles))

	for i in len(tiles) ..< int(tile_length) {
		append(
			&tiles,
			Tile {
				box = {f32(16 * f32(i)), f32(rl.GetScreenHeight() - 120), 16, 16},
				texture = grass_texture,
			},
		)
	}
	player_idle = Animation {
		texture      = rl.LoadTexture("cat_idle.png"),
		num_frames   = 2,
		frame_length = 0.5,
		name         = .Idle,
	}
	player_run = Animation {
		texture      = rl.LoadTexture("cat_run.png"),
		num_frames   = 4,
		frame_length = 0.1,
		name         = .Run,
	}
	player := Player {
		pos          = rl.Vector2{640, 320},
		current_anim = player_idle,
	}


	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		rl.ClearBackground({110, 184, 168, 255})

		handle_input(&player)

		update_player(&player, tiles)

		update_animation(&player.current_anim)

		draw_animation(player.current_anim, player.pos, player.flip)
		for tile in tiles {
			rl.DrawTextureRec(terrain_texture, tile.texture, {tile.box.x, tile.box.y}, rl.GREEN)
		}
		rl.EndDrawing()
	}

	rl.CloseWindow()
}
