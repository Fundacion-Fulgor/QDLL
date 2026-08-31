# D Flip-Flop (DFF)

## Description

Positive edge-triggered D flip-flop with synchronous reset. Implemented as a master-slave topology using transmission gates. Uses `norgate`, `transmissiongate`, and `inverter` as building blocks.

## Specifications

- **Supply voltage**: 1.2V (nominal)
- **Setup time**: < 100ps
- **Hold time**: < 100ps
- **Clock-to-Q delay**: < 500ps

See [DESIGN_SPECIFICATIONS.md](../../../docs/DESIGN_SPECIFICATIONS.md) for complete specifications.

## Ports

| Port | Direction | Description |
|------|-----------|-------------|
| `vdd` | input | Power supply (1.2V) |
| `vss` | input | Ground (0V) |
| `D` | input | Data input |
| `CLK` | input | Clock input (positive edge triggered) |
| `CLR` | input | Synchronous clear (active high) |
| `Q` | output | Data output |

## Design Approach

Transmission gate master-slave flip-flop (SG13G2 LV transistors)

## Files

- `schematic/dff.sch` - xschem schematic (IHP SG13G2 PDK)
- `schematic/dff.sym` - xschem symbol
- `char/dff.yaml` - CACE characterization configuration
- `char/results/` - Characterization results directory
- `layout/dff.gds` - KLayout layout (to be created)

## Simulation Results

### Functional Verification

Results of functional tests: TBD

### Timing Analysis

- Propagation delay: TBD
- Max frequency: TBD

### Corner Analysis

| Corner | Status | Notes |
|--------|--------|-------|
| TT | TBD | |
| FF | TBD | |
| SS | TBD | |

### Power Analysis

- Static power: TBD
- Dynamic power @ 10MHz: TBD

## Layout

- Area: TBD
- DRC: TBD
- LVS: TBD

## CACE Characterization

Run CACE characterization from the `char/` directory:

```bash
cd char/
cace dff.yaml
```

## Issues and Notes

- Layout needs to be completed in KLayout for IHP SG13G2 PDK
- Run CACE characterization after layout is complete

## Authors

- Group N
- Member 1
- Member 2
- Member 3
