
/**
 * libemulation
 * MOS6502
 * (C) 2010 by Marc S. Ressl (mressl@umich.edu)
 * Released under the GPL
 *
 * Emulates a MOS6502 microprocessor.
 */

#include "OEComponent.h"

class MOS6502 : public OEComponent
{
public:
	MOS6502();
	
	bool setValue(string name, string value);
	bool getValue(string name, string& value);
	bool setRef(string name, OEComponent *ref);
	
    bool postMessage(OEComponent *sender, int message, void *data);
    
	void notify(OEComponent *sender, int notification, void *data);
	
private:
	OEComponent *controlBus;
	OEComponent *memoryBus;
	
	OEUnion32 ppc;
	
	OEUInt8 a;
	OEUInt8 x;
	OEUInt8 y;
	OEUInt8 p;
	
	OEUnion32 pc;
	OEUnion32 sp;
	OEUnion32 zp;
	OEUnion32 ea;
	
	OEUInt32 irqCount;
    
	OEUInt8 pendingIRQ;
	OEUInt8 afterCLI;
	OEUInt8 overflow;
	
	OEInt64 icount;
	
	void reset();
	void assertIRQ();
	void assertNMI();
	void execute();
};
