/*
 * GUNDAM ROBOTICS SYSTEMS / REVOLUTIONARY TECHNOLOGY
 * PROJECT: SPACE BATTLESHIP NORTH CAROLINA (BB-55 MODERNIZATION)
 * COMPONENT: INTEGRATED GAS-INSULATED SWITCHGEAR & PERMANENT MAGNET DRIVE
 * HARDWARE HARDENING: SIEMENS 8DJH COMPACT (GIS) & SIEMENS FLEX PM MOTOR
 * INTAKE LAYER: TRADITIONAL MIDSHIP DUAL STACK FUNNEL INTERFACES
 *
 * ASSETS BUILT FOR DIRECT COMPONENT DEPLOYMENT IN:
 * https://github.com/Gundam-Robotics-Systems/USS-North-Carolina-BB-55
 */

$fn = 50; // Set standard fragment calculation path accuracy

// --- GLOBAL DESIGN MATRIX VARIABLES (METERS) ---
hull_length         = 222.0;   // Real-world fast battleship length (approx. 728 feet)
hull_beam           = 33.0;    // Real-world beam width (approx. 108 feet)
hull_depth          = 16.0;    // Deep hull draught clearance profile
stack_spacing       = 14.5;    // Historical distance between BB-55 smoke funnels

// --- INDUSTRIAL HARDWARE FOOTPRINT SPECS ---
gis_enclosure_w     = 6.5;     // Siemens 8DJH Compact isolated width block
gis_enclosure_l     = 8.0;     // Gas-insulated bus routing run length
flex_pm_diameter    = 5.8;     // Permanent Magnet motor stator ring frame diameter
flex_pm_length      = 10.0;    // High-torque rotor line segment length

module north_carolina_propulsion_assembly() {
    // 1. Historical Base Fast Battleship Keel Hull Profile
    color([0.4, 0.4, 0.42]) {
        difference() {
            scale([1, hull_beam/hull_length, hull_depth/hull_length])
                sphere(d=hull_length, $fn=100);
            // Deck trimming boundary plane
            translate([0, 0, hull_depth])
                cube([hull_length + 10, hull_beam + 10, hull_depth], center=true);
        }
    }

    // 2. Dual-Medium Funnel Stack Intakes (Midship Flow Regulators)
    color([0.2, 0.2, 0.22]) {
        translate([stack_spacing/2, 0, hull_depth/2 + 2]) dual_medium_funnel_intake();
        translate([-stack_spacing/2, 0, hull_depth/2 + 2]) dual_medium_funnel_intake();
    }

    // 3. Centralized Power Bay: Siemens 8DJH Compact GIS Block
    // Positioned directly below the stacks to distribute high-voltage snap feeds securely
    color([0.15, 0.3, 0.5])
        translate([0, 0, 1.5])
            difference() {
                cube([gis_enclosure_l, gis_enclosure_w, 4.0], center=true);
                // Internal structural partition channel for SF6 gas charging
                cube([gis_enclosure_l - 0.5, gis_enclosure_w - 0.5, 3.6], center=true);
            }

    // 4. Kinetic Drive Bay: Siemens FLEX PM (Permanent Magnet Motor)
    // Inline rotor configuration linking directly to the rear hydro-jet manifolds
    color([0.6, 0.6, 0.65])
        translate([-gis_enclosure_l - 4, 0, 0])
            rotate([0, 90, 0])
                difference() {
                    // Stator outer steel container walls
                    cylinder(h=flex_pm_length, d=flex_pm_diameter, center=true);
                    // Core rotor slot path for rare-earth magnet matrix alignment
                    cylinder(h=flex_pm_length + 0.1, d=flex_pm_diameter - 1.2, center=true);
                }

    // 5. Internal Flow Ducts (Connecting Stacks to the PM Impeller Bay)
    color([0.3, 0.3, 0.35]) {
        translate([stack_spacing/4, 0, hull_depth/4]) rotate([0, 45, 0]) cylinder(h=12, d=1.8, center=true);
        translate([-stack_spacing/4, 0, hull_depth/4]) rotate([0, -45, 0]) cylinder(h=12, d=1.8, center=true);
    }
}

// Sub-Module: Multi-Medium Funnel Intake with Integrated Internal Sealing Valves
module dual_medium_funnel_intake() {
    difference() {
        // Outer aesthetic profile matching standard North Carolina smoke funnels
        scale([1.4, 1, 1])
            cylinder(h=7.0, d1=hull_beam/6, d2=hull_beam/7, center=true);
        // Internal hollow channel for water/space-medium fluid pathways
        scale([1.3, 0.9, 1])
            cylinder(h=7.2, d1=hull_beam/6.5, d2=hull_beam/7.5, center=true);
    }
    // High-voltage protection line filter grid array layout
    translate([0, 0, 3.2])
        cylinder(h=0.2, d=hull_beam/7.5, center=true);
}

// Execute core hardware assembly compiling frame loop
north_carolina_propulsion_assembly();
