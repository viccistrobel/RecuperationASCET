package SystemLib.Bitoperations;
import common.types.udisc;

/**
 * setBit sets the bit at the specified position of the argument.
 */

stateless class setBit
using Impl_16bit {
	/**
	 * The argument bitArray is returned with a one-bit at the specified position.
	 */
	@c_code
	public udisc getSetBit(udisc in bitArray, udisc in position);

	representation Impl_16bit {
		represent getSetBit.bitArray using {
			datatype = uint16;
		};
		represent getSetBit.position using {
			datatype = uint8;
		};
		represent getSetBit return using {
			datatype = uint16;
		};
	}
	representation Impl_32bit {
		represent getSetBit.bitArray using {
			datatype = uint32;
		};
		represent getSetBit.position using {
			datatype = uint8;
		};
		represent getSetBit return using {
			datatype = uint32;
		};
	}
	representation Impl_8bit {
		represent getSetBit.bitArray using {
			datatype = uint8;
		};
		represent getSetBit.position using {
			datatype = uint8;
		};
		represent getSetBit return using {
			datatype = uint8;
		};
	}

}