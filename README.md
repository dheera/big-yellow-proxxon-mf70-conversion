# Easy Proxxon MF70 CNC conversion (WIP)

This repo is a Proxxon MF70 CNC conversion based on 3D printed and off-the-shelf mechanical parts, with Y axis extended from 46mm to 90mm and Z axis extended by 15mm.

I also include parts for if you just want to extend the Y axis for hand milling only. I'm sure you can figure it out.

### What is a Proxxon MF70?

If you are here you probably already have one, but the [Proxxon MF70](https://www.proxxon.com/us/micromot/37110.php) is a cheap, tiny 3-axis mill that sells for around USD 400, sometimes much cheaper on Craigslist or eBay and is highly popular with hobbyists, especially for CNC conversions.

This mill has a number of limitations, but perhaps the biggest of which is that the Y axis is only limited to 46mm of travel. It is fairly straightforward to extend this Y axis to 90mm. The Z axis is also limiting with 70mm of travel, which makes it hard to use a 4th ("A" or rotational) axis. Both of these limitations are addressed in this conversion.

There are other limitations with this cheap mill but not addressed here. If you have a 3D printer and want a $600 CNC mill this is it. If you want to spend $1000 there are better options available.

### Why another MF70 conversion?

I wasn't fully happy with any of the existing conversions.

The AliExpress conversion kits are cheap but don't address Y axis or Z axis limitations, use the self-tapping screws to hold the entire weight of stepper motors which I am not confident about, and the NEMA23 kits use only 2 out of the 4 mounting screws, which I also do not like.

The Robotpark conversion has the same issues as the AliExpress kit and costs 10X as much.

Proxxon's own CNC-ready MF70 allows a greater Y axis travel of 70mm, which is better than the 46mm, but I am achieving 90mm here.

The Bubblegum conversion does not address the Y axis limitation, and involves more 3D printed parts than I would like to deal with.

[This](http://www.jarkman.co.uk/catalog/cnc/mf70.htm) conversion involves taking off the knobs fully and purchasing additional shaft couplers, which

[This](https://www.thingiverse.com/thing:4375769) conversion is a lot of work and addresses backlash but does not solve the Y axis issue.

There are a number of complicated DIY conversions out there, but I wasn't happy with any of their designs. Some involve 5 billion parts, some do not even address the Y axis length issue, some people have effectively replaced the entire machine with conversions which is too much for me (If I wanted to do that I might as well build the machine from scratch).

## Tools
* 3D printer and PETG, ABS, nylon, or other strong and chemically-resistant filament (do not use PLA!)
* Drill press
* Normal 3mm drill bit for aluminum
* Extra long 3mm x 120mm drill bit for aluminum
* Countersink bit for aluminum
* Any tool that can cut threaded rods (Dremel with cutting disc, small chop saw, etc.)

## Off-the-shelf parts

I include McMaster links for all the parts below for convenience, if you want to order them all in one go, and to serve as permalinks for what the exact part should look like. However, McMaster is expensive. If you want to save money you can find equivalent parts for almost everything on Amazon or eBay, though there is no way to permalink them as the suppliers are constantly changing.

* 2 x M3 threaded rod cut to 125+4+4+0.5+0.5+5+5 for X axis
* 2 x M3 threaded rod cut to ? for Y axis
* 6 x M3 countersunk screws, 12mm, fully tapped
* 6 x M3 square nut, 5.5mm x 5.5mm x 1.8mm
* 4 x 6x12x1.5 oil-impregnated brass thrust washer
* 1 x 6x13x7 spacer (if you can't find 7mm, look for 5mm + 2mm)
* 12 x M5 flat head (countersunk) screws
* AliExpress MF70 conversion shaft couplers -- you only need the "round parts" from the conversion kit -- there are some sellers which will sell only those parts to you
* 3 x good quality NEMA23 motors with 5mm mounting holes (some have 4mm holes, but this kit is designed for 5mm)

### 3D printed parts

For the CNC conversion, print all the parts starting with **all-** and **cnc-** in the **stl/** directory.

If you just want a hand mill with Y axis extension, print everything starting with **all-** and **hand-** and ignore the CNC parts.

I recommend printing everything at 100% infill with PETG, ABS, nylon, or other good material. I highly recommend you do not use PLA. Don't skimp on the infill, this is a mill, and if you're using PETG it will cost you a whopping $9 to print all these parts at 100%.

I recommend printing parts with large surface area (all-y-channel, cnc-x-rightplate, cnc-y-frontplate) with a brim to avoid lifting and warping at the corners, as the flatness of the bottom surface is crucial. If you don't have lifting/warping problems you can ignore this.

### Extra hardware

## Instructions

Remove this thick plastic cover on the Z axis, which gives the Y axis an extra 3mm of clearance to the back side of the mill.

Remove the 2 axis stage and take it apart until you have the X axis looking like this. Note that the "Proxxon" logo is on the front side, but we will take that off later, so you may want to mark the front side of the aluminum plate with a grease pen or scribe. Note that Proxxon's X and Y axis aluminum plates are intentionally NOT perfectly symmetrical by design, so when you put them back together the direction matters or you will not be able to assemble it.

Drop in the 3D printed "all-y-channel". It should fit snugly. You may have to slightly loosen the screws and tighten them back.

With a drill press and regular 3mm drill bit, drill out the 6 marked holes in the channel all the way down and drill fully through the aluminum plate.

Countersink the holes from the back of the aluminum plate with a 90 degree countersink bit.

Remove "all-y-channel", insert the 6 square threaded M3 nuts from the side, and place back.

Use countersunk M3 screws to fix the channel in place.

Now remove the end pieces of the Y axis.

If you are not doing a CNC conversion and only needing a hand mill with extended Y axis, STOP HERE and put everything back together with **hand-y-frontplate** on the front, **all-y-backplate** on the back, use brass lubricated washers on both sides, and replace the factory Y axis knob dial with the reduced-diameter **hand-y-knob** which will allow the carriage to clear it. You can use paint stick to make the markings on the dial more visible. If you are building the CNC version, continue.

Using a 120mm extra-long M3 drill bit, carefully drill out the 2.5mm channels in both X and Y axes to 3mm. We will no longer use the self-tapping screws and instead put M3 threaded rods though these channels which will hold things much more securely. Work the drill from both sides to get all the way through the channel.

Install all-y-backplate on the back side. Install cnc-y-frontplate on the front side. Use the threaded rods, washers and M3 locknuts to tighten them all in place.


