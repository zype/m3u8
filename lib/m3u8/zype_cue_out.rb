# frozen_string_literal: true
module M3u8
  # ZypeCueOut represents a EXT-X-ZYPE-CUE-OUT tag
  # This is a custom tag type.
  # Whereas EXT-X-CUE-OUT tag indicates a SCTE35 cue out prior to server side ad insertion,
  # typically the SSAI solution will remove the tag during insertion
  # We have a customer requirememt for the tag to persist post ssai insertion - thus the new tag type
  class ZypeCueOut
    def initialize(duration)
      @slate_duration = duration
    end

    def to_s
      "#EXT-X-ZYPE-CUE-OUT:DURATION=#{@slate_duration}\n"
    end
  end
end
