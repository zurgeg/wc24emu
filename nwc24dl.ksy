meta:
  id: wc24dl
  endian: be
seq:
  - id: magic
    contents: WcDl
  - id: version
    type: u4
  - id: unk1
    size: 8
  - id: max_subtasks
    type: u2
  - id: num_reserved_entries
    type: u2
  - id: max_entries_and_records
    contents: [0, 120]
  - id: unk2
    size: 0x6a
  - id: records_array
    repeat: expr
    repeat-expr: 120
    type: record
  - id: entries_array
    repeat: expr
    repeat-expr: 120
    type: entry
types:
  record:
    seq:
      - id: tid
        size: 4
      - id: next_dl_timestamp
        type: u4
      - id: last_modified
        type: u4
      - id: unk3
        size: 1
      - id: unk4
        size: 3
  entry:
    seq:
      - id: idx
        type: u2
      - id: type
        type: u1
      - id: record_flags
        type: u1
      - id: entry_flags
        type: u4
      - id: ltid
        size: 4
      - id: ftid
        size: 8
      - id: gtid
        size: 2
      - id: unk5
        size: 2
      - id: maxdl
        type: s2
      - id: error_count
        type: u2
      - id: minutes_interval
        type: u2
      - id: retry_interval
        type: u2
      - id: error_code
        type: s4
      - id: run_count
        type: u1
      - id: unk6
        type: u1
      - id: subtask_flags
        type: u1
      - id: unk7
        type: u1
      - id: enabled_subtasks
        type: u4
      - id: server_download_interval
        type: u4
      - id: last_successful_download
        type: u4
      - id: subtask_dowload_timestamps
        repeat: expr
        repeat-expr: 32
        type: u4
      - id: url
        type: str
        encoding: UTF-8
        size: 0xec
      - id: save_to_filename
        type: str
        encoding: UTF-8
        size: 0x40
      - id: unk8
        size: 0x18
      - id: unk9
        size: 0x4
      - id: ca_slot
        type: u1
      - id: unk10
        size: 0x2
  
