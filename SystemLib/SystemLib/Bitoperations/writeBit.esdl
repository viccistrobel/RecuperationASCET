package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * writeBit writes the value of the logical argument to the specified position of the unsigned discrete argument.
 */

stateless class writeBit
using Impl_16bit {
	/**
	 * For aBool = FALSE, the argument is returned with a zero-bit at the specified position.
	 * For aBool = TRUE, the argument is returned with a one-bit at the specified position.
	 */
	@c_code
	public udisc getWriteBit(udisc in bitArray, udisc in position, boolean in aBool);

	representation Impl_16bit {
		represent getWriteBit.aBool using {
			datatype = sint8;
		};
		represent getWriteBit.bitArray using {
			datatype = uint16;
		};
		represent getWriteBit.position using {
			datatype = uint8;
		};
		represent getWriteBit return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getWriteBit.aBool using {
			datatype = sint8;
		};
		represent getWriteBit.bitArray using {
			datatype = uint32;
		};
		represent getWriteBit.position using {
			datatype = uint8;
		};
		represent getWriteBit return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getWriteBit.aBool using {
			datatype = sint8;
		};
		represent getWriteBit.bitArray using {
			datatype = uint8;
		};
		represent getWriteBit.position using {
			datatype = uint8;
		};
		represent getWriteBit return using {
			datatype = uint8;
		};
	}

}