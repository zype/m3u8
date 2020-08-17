# frozen_string_literal: true
module M3u8
  # ZypeCueIn represents a EXT-X-ZYPE-CUE-IN tag
  # This is a custom tag type.
  # Whereas EXT-X-CUE-IN tag indicates a SCTE35 cue in after server side ad insertion..
  # typically the SSAI solution will remove the tag during insertion.
  # We have a customer requirememt for the tag to persist post ssai insertion - thus the new tag type.
  class ZypeCueIn
    def to_s
      "#EXT-X-ZYPE-CUE-IN\n"
    end
  end
end
