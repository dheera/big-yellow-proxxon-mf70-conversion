# Easy Proxxon MF70 conversion (WIP)

This repo contains two easy Proxxon MF70 mill conversions based on 3D printed and off-the-shelf mechanical parts.

The first is a hand mill conversion with Y axis extended from 46mm to 90mm (hereinafter referred to as "hand version").

The second is a CNC mill conversion with Y axis extended from 46mm to 90mm (hereinafter referred to as "CNC version").

### What is a Proxxon MF70?

If you are here you probably already have one, but the [Proxxon MF70](https://www.proxxon.com/us/micromot/37110.php) is a cheap, tiny 3-axis mill that sells for around USD 400, sometimes much cheaper on Craigslist or eBay and is highly popular with hobbyists, especially for CNC conversions.

This mill has a number of limitations, but perhaps the biggest of which is that the Y axis is only limited to 46mm of travel. It is fairly straightforward to extend this Y axis to 90mm. If that is all you would like to do, and keep it as a hand-operated mill, the "hand version" below is for you. If you are going to convert it to CNC, the "CNC version" below addresses (a) the Y axis limitation (b) replaces the self-tapping screws with threaded rods which are stronger (c) allows you to mount a NEMA23 motor using all 4 screws.

### Why another MF70 conversion?

I wasn't fully happy with any of the existing conversions.

The AliExpress conversion kits are cheap but don't address the Y axis limitation, use the self-tapping screws to hold the entire weight of stepper motors which I am not confident about, and the NEMA23 kits use only 2 out of the 4 mounting screws, which I also do not like.

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

I include McMaster links for all the parts below, if you want to order them all in one go. If you want to save money you can find similar parts on Amazon or eBay, though there is no way to permalink them.

#### For hand version
* 6 x M3 countersunk screws, 12mm, fully tapped
* 6 x M3 square nut, 5.5mm x 5.5mm x 1.8mm
* 6mm x 12mm x 1.5mm oil-impregnated brass thrust washer

#### For CNC version
* 2 x M3 threaded rod cut to 125+4+4+0.5+0.5+5+5 for X axis
* 2 x M3 threaded rod cut to ? for Y axis
* 6 x M3 countersunk screws, 12mm, fully tapped
* 6 x M3 square nut, 5.5mm x 5.5mm x 1.8mm
* 4 x 6x12x1.5 oil-impregnated brass thrust washer
* 1 x 6x13x7 spacer (if you can't find 7mm, look for 5mm + 2mm)
* 12 x M5 flat head (countersunk) screws
* AliExpress MF70 conversion shaft couplers -- you only need the "round parts" from the conversion kit -- there are some sellers which will sell only those parts to you

### 3D printed parts

For hand mill with Y axis extension, print all the parts starting with **all-** and **hand-**.

For CNC mill with Y axis extension, print all the parts starting with **all-** and **cnc-**.

Print everything at 100% infill with PETG, ABS, nylon, or other good material. I highly recommend you do not use PLA.

I recommend printing parts with large surface area (all-y-channel, cnc-x-rightplate, cnc-y-frontplate) with a brim to avoid lifting and warping at the corners, as the flatness of the bottom surface is crucial. If you don't have lifting/warping problems you can ignore this.

### Extra hardware

## Instructions

First, complete part 0 for both versions. Then complete the respective version of part 1 below depending on whether you are doing the hand version or CNC version.

### Part 0: for both versions

Remove this Z axis cover, which gives an extra 3mm of clearance to the back side of the mill.

Remove the 2 axis stage and take it apart until you have the X axis looking like this. Note that the "Proxxon" logo is on the front side, but we will take that off later, so you may want to mark the front side of the aluminum plate with a grease pen or scribe. The aluminum plate is subtly NOT symmetrical.

Drop in the 3D printed "all-y-channel". It should fit snugly. You may have to slightly loosen the screws and tighten them back.

With a drill press and regular 3mm drill bit, drill out the 6 marked holes in the channel all the way down and drill fully through the aluminum plate.

Countersink the holes from the back of the aluminum plate with a 90 degree countersink bit.

Remove "all-y-channel", insert the 6 square threaded M3 nuts from the side, and place back.

Use countersunk M3 screws to fix the channel in place.

Now remove the end pieces of the Y axis.

### Part 1: hand version

Install all-y-backplate on the back side and hand-y-frontplate on the front side using the original self-tapping screws. Note the tiny dot below the axis on each plate, they should both face inwards (toward the aluminum plate).

Replace the manufacturer knob dial with 3D printed hand-y-knob which has a reduced diameter and will allow the stage to clear it on the top side. You can use paint stick to make the markings more visible.

Put the Y axis back together using one lubricated brass washer on each side.

Put everything else back together.

### Part 1: CNC version

Using a 120mm extra-long M3 drill bit, carefully drill out the 2.5mm channels in both X and Y axes to 3mm. We will put M3 threaded rods though these channels which will hold things much more securely than the original self-tapping screws. Work the drill from both sides to get all the way through the channel.

Install all-y-backplate on the back side. Install cnc-y-frontplate on the front side. Use the threaded rods, washers and M3 locknuts to tighten them all in place.



