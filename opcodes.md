# opcodes

This table is intended to help you see the pattern between time and different opcode counts

# table fields

| field       | description                                                                                     |
| ----------- | ----------------------------------------------------------------------------------------------- |
| time        | ingame time (need to look manually)                                                             |
| packets     | total packets with opcode sequences                                                             |
| opcodes     | total opcodes (where FF XX XX (3 bytes opcode) is one opcode, in other cases 1 byte - 1 opcode) |
| opcodes_alt | total opcodes (where 1 byte - 1 opcode)                                                         |
| size        | length of all packets                                                                           |


# table

| time       | packets | opcodes | opcodes_alt | size  | file                                                                 |
|------------|---------|---------|-------------|-------|----------------------------------------------------------------------|
| __________ | 368     | 599     | 1743        | 2111  | replays\cheatrep.rpy                                                 |
| __________ | 252     | 367     | 1073        | 1325  | replays\replay99.rpy                                                 |
| __________ | 1052    | 1666    | 4667        | 5719  | replays\v8vsf1.rpy                                                   |
| __________ | 1736    | 2561    | 7500        | 9236  | test_replays\mp\mp_slpit_screen_catch_up_on.rpy                      |
| __________ | 1504    | 2231    | 6538        | 8042  | test_replays\mp\mp_split_screen_catch_up_off.rpy                     |
| __________ | 2072    | 2911    | 9024        | 11096 | test_replays\mp\mp_tcp-network_2players_catch-up-off.rpy             |
| __________ | 1816    | 2648    | 8336        | 10152 | test_replays\mp\mp_tcp-network_2players_catch-up-on.rpy              |
| __________ | 72      | 91      | 269         | 341   | test_replays\opcodes\10sMcRed.rpy                                    |
| __________ | 152     | 214     | 625         | 777   | test_replays\opcodes\30s.rpy                                         |
| __________ | 48      | 51      | 153         | 201   | test_replays\opcodes\5sGrayMc.rpy                                    |
| __________ | 68      | 81      | 236         | 304   | test_replays\opcodes\fordin2l.rpy                                    |
| __________ | 72      | 100     | 295         | 367   | test_replays\opcodes\g1g1g1g0.rpy                                    |
| __________ | 88      | 94      | 280         | 368   | test_replays\opcodes\g1sg1shr.rpy                                    |
| __________ | 112     | 114     | 342         | 454   | test_replays\opcodes\gaz1-20s.rpy                                    |
| __________ | 152     | 154     | 462         | 614   | test_replays\opcodes\gaz1-30s.rpy                                    |
| __________ | 48      | 48      | 144         | 192   | test_replays\opcodes\nothing4.rpy                                    |
| __________ | 48      | 50      | 150         | 198   | test_replays\opcodes\stay-press-left-btn.rpy                         |
| __________ | 60      | 62      | 186         | 246   | test_replays\opcodes\stay-press-right-btn.rpy                        |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\backwards0-mirrored0.rpy                        |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\backwards0-mirrored1.rpy                        |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\backwards1-mirrored0.rpy                        |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\backwards1-mirrored1.rpy                        |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\FerrariF50-Red-Automatic.rpy                    |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\FerrariF50-Red-Manual.rpy                       |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-knokout_style-arcade.rpy         |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-knokout_style-simulation.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-knokout_style-wild.rpy           |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-single_race_style-arcade.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-single_race_style-simulation.rpy |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-single_race_style-wild.rpy       |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-tournament_style-arcade.rpy      |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\gt-1-race_type-tournament_style-simulation.rpy  |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\McLarenF1-Blue-Automatic.rpy                    |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\McLarenF1-Brown-Automatic.rpy                   |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\McLarenF1-DarkRed-Automatic.rpy                 |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\McLarenF1-Gray-Automatic.rpy                    |
| __________ | 36      | 36      | 108         | 144   | test_replays\options\McLarenF1-White-Automatic.rpy                   |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\McLarenF1-Yellow-Automatic.rpy                  |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-##_opp_00_lvl-xxx_traf-0.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-##_opp_00_lvl-xxx_traf-1.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-##_opp_00_lvl-xxx_traf-x.rpy     |
| __________ | 44      | 44      | 132         | 176   | test_replays\options\opponents__car-01_opp-01_lvl-adv_traf-0.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-01_opp-01_lvl-adv_traf-1.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-01_opp-01_lvl-adv_traf-x.rpy     |
| __________ | 36      | 36      | 108         | 144   | test_replays\options\opponents__car-01_opp-fg_lvl-adv_traf-x.rpy     |
| __________ | 36      | 36      | 108         | 144   | test_replays\options\opponents__car-01_opp-fg_lvl-beg_traf-x.rpy     |
| __________ | 36      | 36      | 108         | 144   | test_replays\options\opponents__car-02_opp-fg_lvl-adv_traf-x.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-xx_opp_xx_lvl-xxx_traf-0.rpy     |
| __________ | 36      | 36      | 108         | 144   | test_replays\options\opponents__car-xx_opp_xx_lvl-xxx_traf-1.rpy     |
| __________ | 40      | 40      | 120         | 160   | test_replays\options\opponents__car-_A_opp-fg_lvl-adv_traf-x.rpy     |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P1SS-s-mmrt_P1SS-s-ssss.rpy                     |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P1SS-s-ssss_P2SS-s-mmrt.rpy                     |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-Ferrari355F1-White-Automatic.rpy           |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-FerrariF50-White-Automatic.rpy             |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-McLarenF1-Gray-Automatic.rpy               |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-McLarenF1-White-Automatic.rpy              |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-McLarenF1-White-Manual.rpy                 |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-s-mmrs.rpy                                 |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-s-mmss.rpy                                 |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-s-msss.rpy                                 |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\P2SS-s-ssss.rpy                                 |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-hsss_P2SS-s-hsss.rpy                    |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-msss_P2SS-s-msss.rpy                    |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-ssfs_P2SS-s-ssfs.rpy                    |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-ssrs_P2SS-s-ssrs.rpy                    |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-sssSh_P2SS-s-sssSh.rpy                  |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-ssss_P2SS-s-ssss.rpy                    |
| __________ | 80      | 80      | 240         | 320   | test_replays\options\_P1SS-s-ssst_P2SS-s-ssst.rpy                    |
| __________ | 1676    | 3159    | 9117        | 10793 | test_replays\philipp\Bw Proving Grounds 0.48.71 (Lap 2).rpy          |
| __________ | 1496    | 2719    | 7766        | 9262  | test_replays\philipp\LR.rpy                                          |
| __________ | 1516    | 2456    | 7171        | 8687  | test_replays\philipp\LR_F1_bw.rpy                                    |
| __________ | 1484    | 2358    | 6863        | 8347  | test_replays\philipp\LR_indigo.rpy                                   |
| __________ | 2940    | 4379    | 12758       | 15698 | test_replays\philipp\Mono_Lotus_BW.rpy                               |
| __________ | 2012    | 3444    | 9999        | 12011 | test_replays\philipp\MP_fw.rpy                                       |
| __________ | 1588    | 2405    | 6994        | 8582  | test_replays\philipp\MS_fw.rpy                                       |
| __________ | 1588    | 2405    | 6994        | 8582  | test_replays\philipp\MS_lotus.rpy                                    |
| __________ | 3996    | 6910    | 19942       | 23938 | test_replays\philipp\myst_unknowncar.rpy                             |
| __________ | 3456    | 5610    | 16221       | 19677 | test_replays\philipp\Northbw1.rpy                                    |
| __________ | 3572    | 5698    | 16611       | 20183 | test_replays\philipp\northF50.rpy                                    |
| __________ | 3500    | 5837    | 16842       | 20342 | test_replays\philipp\north_8_lap.rpy                                 |
| __________ | 2532    | 4149    | 12078       | 14610 | test_replays\philipp\outback_bw.rpy                                  |
| __________ | 676     | 1122    | 3278        | 3954  | test_replays\philipp\outback_F1.rpy                                  |
| __________ | 1148    | 1979    | 5751        | 6899  | test_replays\philipp\outback_fzr.rpy                                 |
| __________ | 576     | 993     | 2891        | 3467  | test_replays\philipp\oval355.rpy                                     |
| __________ | 520     | 941     | 2720        | 3240  | test_replays\philipp\ovalF50.rpy                                     |
| __________ | 472     | 845     | 2453        | 2925  | test_replays\philipp\oval_F1.rpy                                     |
| __________ | 3324    | 5487    | 15877       | 19201 | test_replays\philipp\pac_F1.rpy                                      |
| __________ | 476     | 1066    | 3346        | 3822  | test_replays\philipp\pgF1arca.rpy                                    |
| __________ | 456     | 939     | 3077        | 3533  | test_replays\philipp\pgF1chea.rpy                                    |
| __________ | 504     | 986     | 3373        | 3877  | test_replays\philipp\pgF1mirr.rpy                                    |
| __________ | 476     | 974     | 3206        | 3682  | test_replays\philipp\pgF1norm.rpy                                    |
| __________ | 496     | 1016    | 3334        | 3830  | test_replays\philipp\pgF1sim.rpy                                     |
| __________ | 576     | 993     | 2891        | 3467  | test_replays\philipp\pgF355nor.rpy                                   |
| __________ | 520     | 941     | 2720        | 3240  | test_replays\philipp\pgF50norm.rpy                                   |
