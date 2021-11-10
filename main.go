package main

import (
	"fmt"
	"github.com/jdxyw/generativeart"
	"github.com/jdxyw/generativeart/arts"
	"github.com/jdxyw/generativeart/common"
	"image/color"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().Unix())
	colors := []color.RGBA{
		{0x06, 0x7B, 0xC2, 0xFF},
		{0x84, 0xBC, 0xDA, 0xFF},
		{0xEC, 0xC3, 0x0B, 0xFF},
		{0xF3, 0x77, 0x48, 0xFF},
		{0xD5, 0x60, 0x62, 0xFF},
	}
	frames := 24
	for i := 0; i < frames; i++ {
		c := generativeart.NewCanva(500, 500)
		c.SetBackground(common.Black)
		c.FillBackground()
		c.SetColorSchema(colors)
		c.Draw(arts.NewDotsWave(i * 300 / frames))
		c.ToPNG(fmt.Sprintf("./frames/dots-%d.png", i))
	}

}
