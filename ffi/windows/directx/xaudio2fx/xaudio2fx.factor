USING: alien.c-types classes.struct windows.types ;
in: windows.directx.xaudio2fx

CONSTANT: XAUDIO2FX_DEBUG 1 ;

STRUCT: XAUDIO2FX_VOLUMEMETER_LEVELS
    { pPeakLevels  float*  }
    { pRMSLevels   float*  }
    { ChannelCount UINT32  } ;

CONSTANT: XAUDIO2FX_REVERB_MIN_FRAMERATE 20000 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_FRAMERATE 48000 ;

STRUCT: XAUDIO2FX_REVERB_PARAMETERS
    { WetDryMix           float  }
    { ReflectionsDelay    UINT32 }
    { ReverbDelay         BYTE   }
    { RearDelay           BYTE   }
    { PositionLeft        BYTE   }
    { PositionRight       BYTE   }
    { PositionMatrixLeft  BYTE   }
    { PositionMatrixRight BYTE   }
    { EarlyDiffusion      BYTE   }
    { LateDiffusion       BYTE   }
    { LowEQGain           BYTE   }
    { LowEQCutoff         BYTE   }
    { HighEQGain          BYTE   }
    { HighEQCutoff        BYTE   }
    { RoomFilterFreq      float  }
    { RoomFilterMain      float  }
    { RoomFilterHF        float  }
    { ReflectionsGain     float  }
    { ReverbGain          float  }
    { DecayTime           float  }
    { Density             float  }
    { RoomSize            float  } ;

CONSTANT: XAUDIO2FX_REVERB_MIN_WET_DRY_MIX            0.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_REFLECTIONS_DELAY      0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_REVERB_DELAY           0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_REAR_DELAY             0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_POSITION               0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_DIFFUSION              0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_LOW_EQ_GAIN            0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_LOW_EQ_CUTOFF          0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_HIGH_EQ_GAIN           0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_HIGH_EQ_CUTOFF         0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_ROOM_FILTER_FREQ       20.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_ROOM_FILTER_MAIN       -100.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_ROOM_FILTER_HF         -100.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_REFLECTIONS_GAIN       -100.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_REVERB_GAIN            -100.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_DECAY_TIME             0.1 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_DENSITY                0.0 ;
CONSTANT: XAUDIO2FX_REVERB_MIN_ROOM_SIZE              0.0 ;

CONSTANT: XAUDIO2FX_REVERB_MAX_WET_DRY_MIX            100.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_REFLECTIONS_DELAY      300 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_REVERB_DELAY           85 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_REAR_DELAY             5 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_POSITION               30 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_DIFFUSION              15 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_LOW_EQ_GAIN            12 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_LOW_EQ_CUTOFF          9 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_HIGH_EQ_GAIN           8 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_HIGH_EQ_CUTOFF         14 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_ROOM_FILTER_FREQ       20000.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_ROOM_FILTER_MAIN       0.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_ROOM_FILTER_HF         0.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_REFLECTIONS_GAIN       20.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_REVERB_GAIN            20.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_DENSITY                100.0 ;
CONSTANT: XAUDIO2FX_REVERB_MAX_ROOM_SIZE              100.0 ;

CONSTANT: XAUDIO2FX_REVERB_DEFAULT_WET_DRY_MIX        100.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_REFLECTIONS_DELAY  5 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_REVERB_DELAY       5 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_REAR_DELAY         5 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_POSITION           6 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_POSITION_MATRIX    27 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_EARLY_DIFFUSION    8 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_LATE_DIFFUSION     8 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_LOW_EQ_GAIN        8 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_LOW_EQ_CUTOFF      4 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_HIGH_EQ_GAIN       8 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_HIGH_EQ_CUTOFF     4 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_ROOM_FILTER_FREQ   5000.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_ROOM_FILTER_MAIN   0.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_ROOM_FILTER_HF     0.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_REFLECTIONS_GAIN   0.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_REVERB_GAIN        0.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_DECAY_TIME         1.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_DENSITY            100.0 ;
CONSTANT: XAUDIO2FX_REVERB_DEFAULT_ROOM_SIZE          100.0 ;

STRUCT: XAUDIO2FX_REVERB_I3DL2_PARAMETERS
    { WetDryMix         float }
    { Room              INT32 }
    { RoomHF            INT32 }
    { RoomRolloffFactor float }
    { DecayTime         float }
    { DecayHFRatio      float }
    { Reflections       INT32 }
    { ReflectionsDelay  float }
    { Reverb            INT32 }
    { ReverbDelay       float }
    { Diffusion         float }
    { Density           float }
    { HFReference       float } ;