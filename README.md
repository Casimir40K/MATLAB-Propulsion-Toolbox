# MATLAB Propulsion Toolbox

A function library for gas turbine propulsion calculations in MATLAB, 
organised by engine station. Built during BEng Aerospace Engineering 
at Brunel University.

## Structure
InletShelf/        -- isentropic relations, adiabatic efficiency,
pressure recovery, h-s chart
CompressorShelf/   -- pressure ratio, temperature ratio, polytropic
and adiabatic efficiency, stage analysis
CombustorShelf/    -- total pressure, peak cycle temperature,
thermal limit
TurbineShelf/      -- pressure ratio, efficiency (partial)
NozzleShelf/       -- choke detection, critical pressure (partial)
DependenciesShelf/ -- fluid properties (air, burnt gas)
PropulsionDataShelf/ -- worked example scripts

## Status

Inlet and compressor functions are complete and tested against 
coursework problems. Turbine and nozzle shelves are partially 
implemented.

## Usage

Add the relevant shelf folders to your MATLAB path, then call 
functions directly. See `PropulsionDataShelf/` for worked examples.

```matlab
mach = MachNumber(300, 272.15, 'm/s');
Tt2 = IsentropicTemperature(272.15, mach);
Tt3 = CompressorTotalTemperature(Tt2, 16, 'air', 0.88);
```

No toolboxes required beyond base MATLAB.
