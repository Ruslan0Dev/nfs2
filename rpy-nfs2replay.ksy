meta:
  id: nfs2replay
  file-extension: rpy
  endian: le

doc: |
  https://github.com/Ruslan0Dev
  Need For Speed 2 Replay (.rpy)
  STATUS: WIP. DRAFT!

instances:

  v_game_setup__style:
    enum: e_style
    value: game_mode_1 + game_mode_2
    # gt1  gt2  style
    # 00   00   simulation
    # 01   00   arcade
    # 01   01   wild

  v_opponents__traffic:
    value: players  - 1 - opponents == 4

  v_private__is_split_screen:
    value: game_setup__game_type == e_game_type::split_screen
  
  # private__validate_players:
  #   size: 0
  #   valid:
  #         expr: (v_private__is_split_screen and players == 2)
  
seq:
  # ----------------------------------------------------------------------------
  - id: game_setup__race_type                    #pos: 0x0
    type: u4
    enum: e_race_type
    valid:
      any-of:
        - e_race_type::single_race
        - e_race_type::tournament
        - e_race_type::knockout
  # ----------------------------------------------------------------------------
  - id: location__laps                           #pos: 0x4
    type: u4
    valid:
      any-of: [2, 4, 8]
  # ----------------------------------------------------------------------------
  - id: opponents__skill_level                   #pos: 0x8
    type: u4
    enum: e_skill_level
    valid:
      any-of:
        - e_skill_level::beginner
        - e_skill_level::advanced
  # ----------------------------------------------------------------------------
  - id: game_mode_1                              #pos: 0xC
    type: u4
    valid:
      any-of: [0, 1]
  # ----------------------------------------------------------------------------
  - id: game_setup__game_type                    #pos: 0x10
    type: u4
    enum: e_game_type
    valid:
      any-of:
        - e_game_type::one_player
        - e_game_type::split_screen
        - e_game_type::modem
        - e_game_type::serial_link
        - e_game_type::network
  # ----------------------------------------------------------------------------
  - id: maybe__is_online                         #pos: 0x14
    type: u4
    enum: e_mp_type
    valid:
      any-of:
        - e_mp_type::offline
        - e_mp_type::online
  # ----------------------------------------------------------------------------
  - id: game_setup__catch_up                     #pos: 0x18
    type: u4
    enum: e_state
    valid:
      any-of:
        - e_state::on
        - e_state::off
  # ----------------------------------------------------------------------------
  - id: unk01_always_2                           #pos: 0x1C
    contents: [0x02, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: maybe__cheat                             #pos: 0x20
    type: u4
    enum: e_state
  # ----------------------------------------------------------------------------
  - id: location__track                          #pos: 0x24
    type: u4
    enum: e_track
    valid:
      any-of:
      - e_track::proving_grounds
      - e_track::outback
      - e_track::last_resort
      - e_track::north_country
      - e_track::pacific_spirit
      - e_track::mediterraneo
      - e_track::mystic_peaks
      - e_track::monolithic_studios
  # ----------------------------------------------------------------------------
  - id: unk02_always_0                           #pos: 0x28
    contents: [0x00, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: unk03                                    #pos: 0x2C #TODO
    size: 4
    # valid:
    #   any-of:
    #     - '[0x53, 0xBD, 0xFF, 0xFF]'
    #     - '[0xBD, 0x09, 0x00, 0x00]'
    #     - '[0x85, 0x7A, 0x00, 0x00]'
    #     - '[0xCC, 0xCD, 0xFF, 0xFF]'
    #     - '[0x02, 0xCC, 0xFF, 0xFF]'
    #     - '[0xCD, 0xB0, 0xFF, 0xFF]'
    #     - '[0xD2, 0x7B, 0x00, 0x00]'
    #     - '[0x24, 0x24, 0x00, 0x00]'
        
    #     - '[0xD6, 0x91, 0xFF, 0xFF]'
    #     # Bw Proving Grounds 0.48.71 (Lap 2).rpy
        
    #     - '[0x06, 0x01, 0x00, 0x00]'
    #     # mp_net.rpy
    #     # mp_nocat.rpy
        
    #     - '[0x12, 0x48, 0x00, 0x00]'
    #     # mp_slpit_scrren_cath_up_on.rpy
    #     # mp_slpit_scrren_cath_up_off.rpy
  # ----------------------------------------------------------------------------
  - id: game_setup__backwards                    #pos: 0x30 (48) #OK
    type: u4
    enum: e_state
    valid:
      any-of:
        - e_state::on
        - e_state::off
  # ----------------------------------------------------------------------------
  - id: game_setup__mirrored                     #pos: 0x34 (52) #OK
    type: u4
    enum: e_state
    valid:
      any-of:
        - e_state::on
        - e_state::off
  # ----------------------------------------------------------------------------
  - id: game_mode_2                              #pos: 0x38 (56)
    type: u4
    valid:
      any-of: [0, 1]
  # ----------------------------------------------------------------------------
  - id: unk04                                    #pos: 0x3C #TODO
    size: 4
    valid:
      any-of:
        - '[0, 0, 0, 0]' #KSY BUG? Temporary solution
        - '[0x00, 0x00, 0x00, 0x00, 0x00]'
        # often
        - '[5, 0, 0, 0]' #KSY BUG? Temporary solution
        - '[0x05, 0x00, 0x00, 0x00, 0x00]'
        # 05 00 00 00  Bw Proving Grounds 0.48.71 (Lap 2).rpy
        # 05 00 00 00  myst_unknowncar.rpy
        # 05 00 00 00  north_8_lap.rpy
        # 05 00 00 00  outback_F1.rpy
        # 05 00 00 00  oval_F1.rpy
  # ----------------------------------------------------------------------------
  - id: unk05_always_1                           #pos: 0x40
    contents: [0x01, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: unk06                                    #pos: 0x44 #unstable
    size: 4
    valid:
      any-of:
        - '[0x16, 0x16, 0x00, 0x00]'
        - '[0x22, 0x18, 0x00, 0x00]'
        - '[0x24, 0x11, 0x00, 0x00]'
        - '[0x30, 0x0C, 0x00, 0x00]'
        - '[0x3A, 0x19, 0x00, 0x00]'
        - '[0x5A, 0x19, 0x00, 0x00]'
        - '[0x60, 0x0C, 0x00, 0x00]'
        - '[0x80, 0x10, 0x00, 0x00]'
        - '[0x84, 0x20, 0x00, 0x00]'
        - '[0x8E, 0x19, 0x00, 0x00]'
        - '[0x92, 0x12, 0x00, 0x00]'
        - '[0xB0, 0x1E, 0x00, 0x00]'
        - '[0xBA, 0x0A, 0x00, 0x00]'
        - '[0xC6, 0x0B, 0x00, 0x00]'
        - '[0xCE, 0x16, 0x00, 0x00]'
        - '[0xDA, 0x14, 0x00, 0x00]'
  # ----------------------------------------------------------------------------
  - id: unk07_zero                               #pos: 0x48
    type: t_zero_4
    repeat: expr
    repeat-expr: 4
  # ----------------------------------------------------------------------------
  - id: unk08                                    #pos: 0x58
    size: 4
    valid:
      any-of:
        - '[0x00, 0x00, 0x00, 0x00]'
        # often
        - '[0x01, 0x00, 0x00, 0x00]'
        # 01 00 00 00  Bw Proving Grounds 0.48.71 (Lap 2).rpy
        # 01 00 00 00  myst_unknowncar.rpy
  # ----------------------------------------------------------------------------
  - id: unk09_zero                               #pos: 0x5C
    type: t_zero_4
    repeat: expr
    repeat-expr: 2
  # ----------------------------------------------------------------------------
  - id: unk10                                    #pos: 0x64
    size: 4
    valid:
      any-of:
        - '[0x00, 0x00, 0x00, 0x00]'
        - '[0x01, 0x00, 0x00, 0x00]'
        # 00 00 00 00  outback_F1.rpy
        # 00 00 00 00  oval_F1.rpy
  # ----------------------------------------------------------------------------
  - id: players                                  #pos: 0x68 (104)
    type: u4
    valid:
      min: 0
      max: 12

    # 1 - no opp (1) + no traff (0)
    # 2 - 1 opp (2) + no traff (0)
    # 5 - no opp (1) + traff (4)
    # 6 - 1 opp (2) + traff (4)
  # ----------------------------------------------------------------------------
  - id: maybe_is_multiplayer                     #pos: 0x6C
    type: u4
    enum: e_multiplayer
    valid:
      any-of:
        - e_multiplayer::yes
        - e_multiplayer::no
  # ----------------------------------------------------------------------------
  - id: opponents                                #pos: 0x70 #TODO
    type: u4
    # !errors
    # valid:
    #   expr: (v_private__is_split_screen and opponents == 0) or ((players - 1) == _ or (players - 1 - 4) == _)
      # any-of:
      #   - 0 # no opponents
      #   - 1 # one
      #   - 7 # full grid
  # ----------------------------------------------------------------------------
  - id: opponent_car                             #pos: 0x74
    type: u4
    enum: e_opponent_car
    valid:
      any-of:
        - e_opponent_car::mc_laren_f1
        - e_opponent_car::ferrari_f50
        - e_opponent_car::ferrari_355_f1
        - e_opponent_car::ford_gt90
        - e_opponent_car::ford_indigo
        - e_opponent_car::ford_mach_iii
        - e_opponent_car::jaguar_x_j220
        - e_opponent_car::lotus_g_t1
        - e_opponent_car::lotus_esprit_v8
        - e_opponent_car::ital_design_nazca_c2
        - e_opponent_car::ital_design_cala
        - e_opponent_car::isdera_112i
        - e_opponent_car::class_a
        - e_opponent_car::class_b
        - e_opponent_car::class_c
        - e_opponent_car::no_opponents # test
  # ----------------------------------------------------------------------------
  - id: player_one__car                          #pos: 0x78 (120)
    type: u4
    enum: e_car
    valid:
      any-of:
        - e_car::mc_laren_f1
        - e_car::ferrari_f50
        - e_car::ferrari_355_f1
        - e_car::ford_gt90
        - e_car::ford_indigo
        - e_car::ford_mach_iii
        - e_car::jaguar_x_j220
        - e_car::lotus_g_t1
        - e_car::lotus_esprit_v8
        - e_car::ital_design_nazca_c2
        - e_car::ital_design_cala
        - e_car::isdera_112i
        - e_car::bomber_bfs
        - e_car::tombstone
        - e_car::fzr_2000
  # ----------------------------------------------------------------------------
  - id: unk11_always_1                           #pos: 0x7C
    size: 4
    contents: [0x01, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: player_one__transmission                 #pos: 0x80
    type: u4
    enum: e_transmission
    valid:
      any-of:
        - e_transmission::manual
        - e_transmission::automatic
  # ----------------------------------------------------------------------------
  - id: player_one__color                        #pos: 0x84 #TODO
    type: u4
    enum: e_color
  # ----------------------------------------------------------------------------
  - id: maybe_is_multiplayer_2                   #pos: 0x88
    type: u4
    valid:
      any-of:
        - 0 # multiplayer
        - 1
  # ----------------------------------------------------------------------------
  - id: unk12_always_1                           #pos: 0x8C
    contents: [0x01, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: unk13_always_1                           #pos: 0x90
    contents: [0x01, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: unk14_always_0                           #pos: 0x94
    contents: [0x00]
  # ----------------------------------------------------------------------------
  - id: player_one__settings__front_downforce    #pos: 0x95
    type: u2
    enum: e_front_downforce
    valid:
      any-of:
        - e_front_downforce::stock
        - e_front_downforce::medium
        - e_front_downforce::high
  # ----------------------------------------------------------------------------
  - id: unk15_always_0                           #pos: 0x97
    contents: [0x00]
  # ----------------------------------------------------------------------------
  - id: unk16_always_0                           #pos: 0x98
    contents: [0x00]
  # ----------------------------------------------------------------------------
  - id: player_one__settings__rear_downforce     #pos: 0x99
    type: u2
    enum: e_rear_downforce
    valid:
      any-of:
        - e_rear_downforce::stock
        - e_rear_downforce::medium
        - e_rear_downforce::high
  # ----------------------------------------------------------------------------
  - id: unk17_always_0                           #pos: 0x9B
    contents: [0x00]
  # ----------------------------------------------------------------------------
  - id: unk18_always_0010                        #pos: 0x9C
    contents: [0x00, 0x00, 0x01, 0x00]
  # ----------------------------------------------------------------------------
  - id: player_one__settings__brake_bias         #pos: 0xA0
    type: u4
    enum: e_brake_bias
    valid:
      any-of:
        - e_brake_bias::stock
        - e_brake_bias::rear
        - e_brake_bias::front
  # ----------------------------------------------------------------------------
  - id: player_one__settings__gear_ratios        #pos: 0xA4
    type: u4
    enum: e_gear_ratios
    valid:
      any-of:
        - e_gear_ratios::stock
        - e_gear_ratios::tall
        - e_gear_ratios::short
  # ----------------------------------------------------------------------------
  - id: unk19_always_0                           #pos: 0xA8
    contents: [0x00, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: players_info                             #pos: 0xAC (172)
    type: t_players_reserved
    size: 64 * 12 # max players
  # ----------------------------------------------------------------------------
  - id: always_zero_1                            #pos: 0x3AC
    type: t_zero_4
    repeat: expr
    repeat-expr: 52
  # ----------------------------------------------------------------------------
  - id: number_1                                 #pos: 0x47C
    contents: [0x01, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_2                                 #pos: 0x480
    contents: [0x02, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_3                                 #pos: 0x484
    contents: [0x03, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_4                                 #pos: 0x488
    contents: [0x04, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_5                                 #pos: 0x48C
    contents: [0x05, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_6                                 #pos: 0x490
    contents: [0x06, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_7                                 #pos: 0x494
    contents: [0x07, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_8                                 #pos: 0x498
    contents: [0x08, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_9                                 #pos: 0x49C
    contents: [0x09, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_10                                #pos: 0x4A0
    contents: [0x0A, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_11                                #pos: 0x4A4
    contents: [0x0B, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: number_12                                #pos: 0x4A8
    contents: [0x0C, 0x00, 0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: unk20_zero                               #pos: 0x4AC
    type: t_zero_4
    repeat: expr
    repeat-expr: 4
  # ----------------------------------------------------------------------------
  - id: numbers                                  #pos: 0x4BC
    size: 40
  # ----------------------------------------------------------------------------
  - id: unk21_zero                               #pos: 0x4E4
    type: t_zero_4
    repeat: expr
    repeat-expr: 5
  # ----------------------------------------------------------------------------
  - id: unk22                                    #pos: 0x4F8
    size: 4
    valid:
      any-of:
        - '[0x00, 0x00, 0x00, 0x00]'
        - '[0x03, 0x00, 0x00, 0x00]'
  # ----------------------------------------------------------------------------
  - id: unk23_zero                               #pos: 0x4FC
    type: t_zero_4
    repeat: expr
    repeat-expr: 8
  # ----------------------------------------------------------------------------
  - id: unk24_always_0                           #pos: 0x51C
    contents: [0x00, 0x00]
  # ----------------------------------------------------------------------------
  - id: name1                                    #pos: 0x51E
    size: 9
  # ----------------------------------------------------------------------------
  - id: name2                                    #pos: 0x527
    size: 9
  # ----------------------------------------------------------------------------
  - id: unk25_zero                               #pos: 0x530
    type: t_zero_4
    repeat: expr
    repeat-expr: 32
  # ----------------------------------------------------------------------------
  - id: unk26_unstable                           #pos: 0x5B0
    # pos: 1456
    size: 4
    # C9 38 00 00
  # ----------------------------------------------------------------------------
  - id: replay_array                             #pos: 0x5B4
    # pos: 1456 + 4
    type: t_packet
    repeat: until
    repeat-until: _.i_len_raw == 0
  # ----------------------------------------------------------------------------

types:

  t_packet:
    -webide-representation: "{opcode_sequences.opcodes}"
    instances:
      i_len_raw:
        type: u1
        valid:
          # min: 4 #TODO
          max: 33
      i_len:
        value: i_len_raw - 1
    seq:
      - id: opcode_sequences
        if: i_len_raw != 0
        size: i_len
        type: t_opcodes

  t_opcodes:
    seq:
      - id: opcodes
        type: t_opcode
        repeat: eos

  t_opcode:
    -webide-representation: "{opcode} {extra}"
    seq:
      - id: opcode
        # size: 1
        type: u1
      - id: extra
        if: opcode == 0xFF
        size: 2

  t_players_reserved:
    seq:
    - id: players_info
      # pos: 172
      type: t_player
      size: 64
      repeat: expr
      repeat-expr: _root.players

  t_player:
    -webide-representation: "{unk01} {unk02} {unk03} {unk04} {unk09} {unk10} {car} {color} {name}"
    seq:
      - id: name                       #pos: 0xAC
        type: str
        encoding: ascii
        size: 12
      - id: car                        #pos: 0xB8 #TODO
        type: u4
        enum: e_car
        valid:
          any-of:
            - e_car::mc_laren_f1
            - e_car::ferrari_f50
            - e_car::ferrari_355_f1
            - e_car::ford_gt90
            - e_car::ford_indigo
            - e_car::ford_mach_iii
            - e_car::jaguar_x_j220
            - e_car::lotus_g_t1
            - e_car::lotus_esprit_v8
            - e_car::ital_design_nazca_c2
            - e_car::ital_design_cala
            - e_car::isdera_112i
            - e_car::bomber_bfs
            - e_car::tombstone
            - e_car::fzr_2000
            - e_car::unknown18
            - e_car::unknown19
            - e_car::unknown21
            - e_car::unknown25
            - e_car::unknown28
            - e_car::unknown29
            - e_car::unknown30
            - e_car::unknown31
            - e_car::unknown32
      - id: unk01                      #pos: 0xBC
        type: u4
        valid:
          any-of:
            - 0x00
            - 0x01
            - 0x02
            - 0x04
      - id: transmission               #pos: 0xC0
        type: u4
        enum: e_transmission
        valid:
          any-of:
            - e_transmission::manual
            - e_transmission::automatic
      - id: color                      #pos: 0xC4 0x104 #TODO
        type: u4
        enum: e_color
      - id: unk02                      #pos: 0xC8
        size: 4
        valid:
          any-of:
            - '[0x00, 0x00, 0x00, 0x00]'
            - '[0x01, 0x00, 0x00, 0x00]'
      - id: unk03                      #pos: 0xCC
        size: 4
        valid:
          any-of:
            - '[0x00, 0x00, 0x00, 0x00]'
            - '[0x01, 0x00, 0x00, 0x00]'
      - id: unk04                      #pos: 0xD0
        size: 4
        valid:
          any-of:
            - '[0x00, 0x00, 0x00, 0x00]'
            - '[0x01, 0x00, 0x00, 0x00]'
      - id: unk05_always_0             #pos: 0xD4
        contents: [0x00]
      - id: settings__front_downforce  #pos: 0xD5
        type: u2
        enum: e_front_downforce
        valid:
          any-of:
            - e_front_downforce::undefined
            - e_front_downforce::stock
            - e_front_downforce::medium
            - e_front_downforce::high
      - id: unk06_always_0             #pos: 0xD7
        contents: [0x00]
      - id: unk07_always_0             #pos: 0xD8
        contents: [0x00]
      - id: settings__rear_downforce   #pos: 0xD9
        type: u2
        enum: e_rear_downforce
        valid:
          any-of:
            - e_rear_downforce::undefined
            - e_rear_downforce::stock
            - e_rear_downforce::medium
            - e_rear_downforce::high
      - id: unk08_always_0             #pos: 0xDB
        contents: [0x00]
      - id: unk09                      #pos: 0xDC
        size: 4
        valid:
          any-of:
            - '[0x00, 0x00, 0x00, 0x00]'
            - '[0x00, 0x00, 0x01, 0x00]'
      - id: settings__brake_bias       #pos: 0xE0
        type: u4
        enum: e_brake_bias
        valid:
          any-of:
            - e_brake_bias::stock
            - e_brake_bias::rear
            - e_brake_bias::front
      - id: settings__gear_ratios      #pos: 0xE4
        type: u4
        enum: e_gear_ratios
        valid:
          any-of:
            - e_gear_ratios::undefined
            - e_gear_ratios::stock
            - e_gear_ratios::tall
            - e_gear_ratios::short
      - id: unk10                      #pos: 0xE8 0x128
        type: u4
        valid:
          any-of:
            - 0x00
            - 0x01
            - 0x02
            - 0x03
            - 0x04
            - 0x05
            - 0x06
            - 0x07
            - 0x08
            - 0x09
            - 0x0A
            
  t_zero_4_noassert:
    -webide-representation: "{zero}"
    seq:
      - id: zero
        size: 4
  t_zero_4:
    -webide-representation: "{zero}"
    seq:
      - id: zero
        contents: [0x00, 0x00, 0x00, 0x00]
        size: 4

enums:

  e_state:
    0: off
    1: on

  e_game_type:
    0: one_player
    1: split_screen
    2: modem
    3: serial_link
    4: network
  
  e_mp_type: #TODO
    0: offline
    1: online

  e_race_type:
    0: single_race
    1: tournament
    2: knockout

  e_multiplayer:
    0x01: no
    0x02: yes

  # opponents
  e_skill_level:
    0x00: beginner
    0x01: advanced

  e_track:
    0: proving_grounds      # Proving Grounds
    2: outback              # Outback
    4: last_resort          # Last Resort
    5: north_country        # North Country
    3: pacific_spirit       # Pacific Spirit
    6: mediterraneo         # Mediterraneo
    7: mystic_peaks         # Mystic Peaks
    8: monolithic_studios   # Monolithic Studios

  e_car:
    0: mc_laren_f1          # McLaren F1
    1: ferrari_f50          # Ferrari F50
    2: ferrari_355_f1       # Ferrari 355 F1
    3: ford_gt90            # Ford GT90
    4: ford_indigo          # Ford Indigo
    5: ford_mach_iii        # Ford Mach III
    6: jaguar_x_j220        # Jaguar XJ220
    7: lotus_g_t1           # Lotus GT1
    8: lotus_esprit_v8      # Lotus Esprit V8
    9: ital_design_nazca_c2 # ItalDesign Nazca C2
    10: ital_design_cala    # ItalDesign Cala
    11: isdera_112i         # Isdera 112i
    12: bomber_bfs          # Bomber BFS
    13: tombstone           # Tombstone
    14: fzr_2000            # FZR 2000
    # ... #TODO
    18: unknown18
    19: unknown19
    21: unknown21
    25: unknown25
    28: unknown28
    29: unknown29
    30: unknown30
    31: unknown31
    32: unknown32

  e_opponent_car:
    0: mc_laren_f1          # McLaren F1
    1: ferrari_f50          # Ferrari F50
    2: ferrari_355_f1       # Ferrari 355 F1
    3: ford_gt90            # Ford GT90
    4: ford_indigo          # Ford Indigo
    5: ford_mach_iii        # Ford Mach III
    6: jaguar_x_j220        # Jaguar XJ220
    7: lotus_g_t1           # Lotus GT1
    8: lotus_esprit_v8      # Lotus Esprit V8
    9: ital_design_nazca_c2 # ItalDesign Nazca C2
    10: ital_design_cala    # ItalDesign Cala
    11: isdera_112i         # Isdera 112i
    12: class_a             # class A
    13: class_b             # class B
    14: class_c             # class C
    15: no_opponents        # TODO: need check
  
  e_color:
    0x3C: brown
    0x41: dark_red
    0x40: gray
    0x1E: red
    0x3F: white
    0x3E: blue
    0x3D: yellow
    # ... #TODO
    0x00: color_00
    0x05: color_05
    0x06: color_06
    0x09: color_09
    0x0A: color_0a
    0x0B: color_0b
    0x0D: color_0d
    0x12: color_12
    0x13: color_13
    0x15: color_15
    0x16: color_16
    0x1B: color_1b
    0x1C: color_1c
    0x1F: color_1f
    0x20: color_20
    0x21: color_21
    0x22: color_22
    0x23: color_23
    0x26: color_26
    0x33: color_33
    0x34: color_34
    0x35: color_35
    0x36: color_36
    0x37: color_37
    0x42: color_42
    0x43: color_43
    0x44: color_44
    0x45: color_45
    0x46: color_46
    0x47: color_47
    0x48: color_48
    0x4B: color_4b
    0x4E: color_4e
    0x4F: color_4f

  e_transmission:
    0x00: manual
    0x01: automatic
    
  # settings
  e_front_downforce:
    0x0000: undefined
    0x0100: stock           # 00 01
    0x0180: medium          # 80 01
    0x0200: high            # 00 02
  e_rear_downforce:
    0x0000: undefined
    0x0100: stock           # 00 01
    0x0180: medium          # 80 01
    0x0200: high            # 00 02
    
  e_brake_bias:
    0x00000000: stock       # 00 00 00 00
    0xFFFFCCCD: rear        # CD CC FF FF
    0x00003333: front       # 33 33 00 00
  
  e_gear_ratios:
    0x000000: undefined
    0x010000: stock    # 00 00 01
    0x012666: tall     # 66 26 01
    0x00D999: short    # 99 D9 00

  # for internal use ###########################################################
  
  e_style:
    0: simulation
    1: arcade
    2: wild
