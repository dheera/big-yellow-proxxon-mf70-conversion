# Easy Proxxon MF70 conversion (WIP)

The [Proxxon MF70](https://www.proxxon.com/us/micromot/37110.php) is a cheap, tiny 3-axis mill that sells for around USD 400, sometimes much cheaper on Craigslist or eBay and is highly popular with hobbyists, especially for CNC conversions.

As it is a cheap machine, it has a number of shortcomings. I address only one of them here, which is the limited Y axis range of 46mm. In this conversion I extend it to 80+mm.

You will need a 3D printer that can print PETG or ABS.

### Why another MF70 conversion?

There are a number of kits on AliExpress to convert this machine, and while it's nice that they use metal parts, they do not address the Y axis limitation, which is a rather big limitation. I wanted something that makes use of as much of the AliExpress metal kit as possible but extends the Y axis, and is easy to put together.

There are a number of complicated DIY conversions out there, but I wasn't happy with any of their designs. Some people have effectively replaced the entire machine with conversions. If I wanted to do that I might as well build the machine from scratch! I wanted something simpler that gets me started.

By the way, you can also use this conversion if you just want the extended Y range on a hand-operated mill and don't want to convert to CNC.

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
* 6mm x 12mm x 1.5mm oil-impregnated brass thrust washer
* 6mm x 13mm x 5mm spacer
* 2 x M3 machine screws, 35mm, partially tapped
* AliExpress MF70 conversion kit

### 3D printed parts

For hand mill with Y axis extension, print all the parts starting with **all-** and **hand-**.

For CNC mill with Y axis extension, print all the parts starting with **all-** and **cnc-**.

Print everything at 100% infill with PETG, ABS, nylon, or other good material. I highly recommend you do not use PLA.

I recommend printing parts with large surface area (all-y-channel, cnc-x-rightplate, cnc-y-frontplate) with a brim to avoid lifting and warping at the corners, as the flatness of the bottom surface is crucial. If you don't have lifting/warping problems you can ignore this.

### Extra hardware

## Instructions

### First, for both versions
Remove this Z axis cover and replace it with the modified version which allows an additional 3mm of clearance between the stage and the Z axis column. The cover is not just a cosmetic part! The cover also serves as a physical stop for the Z axis so that your mill head doesn't fall down if it is accidentally driven beyond its limit.

Take apart the 2 axis stage

Run a standard M3 tap through the channels in the Y axis plate

Place the Y axis channel, verify the big square foo is able to run to both ends without obstruction. Note that the orientations MUST be correct, there is only 1 correct orientation of the Y axis channel and 1 correct orientation of  the big square foo. You may want to mark them for your convenience.

Remove the big square foo, clamp the Y axis channel and drill six 3mm holes through the channel and into the aluminum plate below.

Countersink the aluminum plate from the back.

Install the square nuts into the channel.

Install the big square foo (with the brass spacer) and channel.

Fix the channel with M3 12mm countersunk screws from the back.

### Second (hand version)

Install the back plate with M3 15mm machine screws.

Install the front plate with M3 15mm machine screws (hand version) or M3 35mm screws (CNC version).

Install the threaded rod with thrust bearings on both front and back, and tighten the nylon locknut. Do not overtighten!

### Second (CNC version)

Put everything else back together. For the X and Z axis you can just use the AliExpress kit as-is.
