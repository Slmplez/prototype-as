/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jdi.internal.spy;

import com.ibm.icu.text.MessageFormat;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UTFDataFormatException;
import java.util.Arrays;
import org.eclipse.jdi.internal.spy.JdwpCommandPacket;
import org.eclipse.jdi.internal.spy.JdwpPacket;
import org.eclipse.jdi.internal.spy.JdwpReplyPacket;
import org.eclipse.jdi.internal.spy.TcpipSpy;
import org.eclipse.jdi.internal.spy.UnableToParseDataException;

public class VerbosePacketStream
extends PrintStream {
    public static final byte ARRAY_TAG = 91;
    public static final byte BYTE_TAG = 66;
    public static final byte CHAR_TAG = 67;
    public static final byte OBJECT_TAG = 76;
    public static final byte FLOAT_TAG = 70;
    public static final byte DOUBLE_TAG = 68;
    public static final byte INT_TAG = 73;
    public static final byte LONG_TAG = 74;
    public static final byte SHORT_TAG = 83;
    public static final byte VOID_TAG = 86;
    public static final byte BOOLEAN_TAG = 90;
    public static final byte STRING_TAG = 115;
    public static final byte THREAD_TAG = 116;
    public static final byte THREAD_GROUP_TAG = 103;
    public static final byte CLASS_LOADER_TAG = 108;
    public static final byte CLASS_OBJECT_TAG = 99;
    public static final byte TYPE_TAG_CLASS = 1;
    public static final byte TYPE_TAG_INTERFACE = 2;
    public static final byte TYPE_TAG_ARRAY = 3;
    public static final int JDWP_CLASS_STATUS_VERIFIED = 1;
    public static final int JDWP_CLASS_STATUS_PREPARED = 2;
    public static final int JDWP_CLASS_STATUS_INITIALIZED = 4;
    public static final int JDWP_CLASS_STATUS_ERROR = 8;
    public static final int ACC_PUBLIC = 1;
    public static final int ACC_PRIVATE = 2;
    public static final int ACC_PROTECTED = 4;
    public static final int ACC_STATIC = 8;
    public static final int ACC_FINAL = 16;
    public static final int ACC_SUPER = 32;
    public static final int ACC_VOLATILE = 64;
    public static final int ACC_TRANSIENT = 128;
    public static final int ACC_NATIVE = 256;
    public static final int ACC_INTERFACE = 512;
    public static final int ACC_ABSTRACT = 1024;
    public static final int ACC_STRICT = 2048;
    public static final int ACC_ENUM = 256;
    public static final int ACC_VARARGS = 128;
    public static final int ACC_BRIDGE = 64;
    public static final int ACC_SYNTHETIC = 4096;
    public static final int ACC_SYNCHRONIZED = 32;
    public static final int ACC_EXT_SYNTHETIC = -268435456;
    public static final int INVOKE_SINGLE_THREADED = 1;
    public static final int INVOKE_NONVIRTUAL = 2;
    public static final int THREAD_STATUS_ZOMBIE = 0;
    public static final int THREAD_STATUS_RUNNING = 1;
    public static final int THREAD_STATUS_SLEEPING = 2;
    public static final int THREAD_STATUS_MONITOR = 3;
    public static final int THREAD_STATUS_WAIT = 4;
    public static final int EVENTKIND_SINGLE_STEP = 1;
    public static final int EVENTKIND_BREAKPOINT = 2;
    public static final int EVENTKIND_FRAME_POP = 3;
    public static final int EVENTKIND_EXCEPTION = 4;
    public static final int EVENTKIND_USER_DEFINED = 5;
    public static final int EVENTKIND_THREAD_START = 6;
    public static final int EVENTKIND_THREAD_END = 7;
    public static final int EVENTKIND_THREAD_DEATH = 7;
    public static final int EVENTKIND_CLASS_PREPARE = 8;
    public static final int EVENTKIND_CLASS_UNLOAD = 9;
    public static final int EVENTKIND_CLASS_LOAD = 10;
    public static final int EVENTKIND_FIELD_ACCESS = 20;
    public static final int EVENTKIND_FIELD_MODIFICATION = 21;
    public static final int EVENTKIND_EXCEPTION_CATCH = 30;
    public static final int EVENTKIND_METHOD_ENTRY = 40;
    public static final int EVENTKIND_METHOD_EXIT = 41;
    public static final int EVENTKIND_VM_INIT = 90;
    public static final int EVENTKIND_VM_START = 90;
    public static final int EVENTKIND_VM_DEATH = 99;
    public static final int EVENTKIND_VM_DISCONNECTED = 100;
    public static final int SUSPEND_STATUS_SUSPENDED = 1;
    public static final int SUSPENDPOLICY_NONE = 0;
    public static final int SUSPENDPOLICY_EVENT_THREAD = 1;
    public static final int SUSPENDPOLICY_ALL = 2;
    public static final int STEPDEPTH_INTO = 0;
    public static final int STEPDEPTH_OVER = 1;
    public static final int STEPDEPTH_OUT = 2;
    public static final int STEPSIZE_MIN = 0;
    public static final int STEPSIZE_LINE = 1;
    private static final byte[] padding = new byte[256];
    private static final String shift;
    private static final byte[] zeros;

    static {
        Arrays.fill(padding, (byte)32);
        shift = new String(padding, 0, 32);
        zeros = new byte[16];
        Arrays.fill(zeros, (byte)48);
    }

    public VerbosePacketStream(OutputStream out) {
        super(out);
    }

    public synchronized void print(JdwpPacket packet, boolean fromVM) throws IOException {
        try {
            this.printHeader(packet, fromVM);
            this.printData(packet);
            this.println();
        }
        catch (UnableToParseDataException e) {
            this.println("\n" + e.getMessage() + ':');
            this.printDescription("Remaining data:");
            byte[] data = e.getRemainingData();
            if (data == null) {
                this.printHex(packet.data());
            } else {
                this.printHex(e.getRemainingData());
            }
            this.println();
        }
    }

    protected void printHeader(JdwpPacket packet, boolean fromVM) throws UnableToParseDataException {
        if (fromVM) {
            this.println("From VM");
        } else {
            this.println("From Debugger");
        }
        this.printDescription("Packet ID:");
        this.printHex(packet.getId());
        this.println();
        this.printDescription("Length:");
        this.print(packet.getLength());
        this.println();
        this.printDescription("Flags:");
        byte flags = packet.getFlags();
        this.printHex(flags);
        if ((flags & 0xFFFFFF80) != 0) {
            this.print(MessageFormat.format((String)" (REPLY to {0})", (Object[])new String[]{(String)JdwpCommandPacket.commandMap().get(new Integer(TcpipSpy.getCommand(packet)))}));
        } else {
            this.print(" (COMMAND)");
        }
        this.println();
        this.printSpecificHeaderFields(packet);
    }

    protected void printSpecificHeaderFields(JdwpPacket packet) {
        if (packet instanceof JdwpReplyPacket) {
            this.printError((JdwpReplyPacket)packet);
        } else if (packet instanceof JdwpCommandPacket) {
            this.printCommand((JdwpCommandPacket)packet);
        }
    }

    protected void printCommand(JdwpCommandPacket commandPacket) {
        this.printDescription("Command set:");
        int commandAndSet = commandPacket.getCommand();
        byte set = (byte)(commandAndSet >> 8);
        byte command = (byte)commandAndSet;
        this.printHex(set);
        this.printParanthetical(set);
        this.println();
        this.printDescription("Command:");
        this.printHex(command);
        this.printParanthetical(command);
        this.print(" (");
        this.print(JdwpCommandPacket.commandMap().get(new Integer(commandAndSet)));
        this.println(')');
    }

    protected void printError(JdwpReplyPacket reply) {
        short error = reply.errorCode();
        this.printDescription("Error:");
        this.printHex(error);
        if (error != 0) {
            this.print(" (");
            this.print(JdwpReplyPacket.errorMap().get(new Integer(error)));
            this.print(')');
        }
        this.println();
    }

    protected void printData(JdwpPacket packet) throws IOException, UnableToParseDataException {
        if ((packet.getFlags() & 0xFFFFFF80) != 0) {
            this.printReplyData((JdwpReplyPacket)packet);
        } else {
            this.printCommandData((JdwpCommandPacket)packet);
        }
    }

    private void printCommandData(JdwpCommandPacket command) throws IOException, UnableToParseDataException {
        byte[] data = command.data();
        if (data == null) {
            return;
        }
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(data));
        int commandId = command.getCommand();
        switch (commandId) {
            case 257: {
                break;
            }
            case 258: {
                this.printVmClassesBySignatureCommand(in);
                break;
            }
            case 259: {
                break;
            }
            case 260: {
                break;
            }
            case 261: {
                break;
            }
            case 262: {
                break;
            }
            case 263: {
                break;
            }
            case 264: {
                break;
            }
            case 265: {
                break;
            }
            case 266: {
                this.printVmExitCommand(in);
                break;
            }
            case 267: {
                this.printVmCreateStringCommand(in);
                break;
            }
            case 268: {
                break;
            }
            case 269: {
                break;
            }
            case 270: {
                this.printVmDisposeObjectsCommand(in);
                break;
            }
            case 271: {
                break;
            }
            case 272: {
                break;
            }
            case 273: {
                break;
            }
            case 274: {
                this.printVmRedefineClassCommand(in);
                break;
            }
            case 275: {
                this.printVmSetDefaultStratumCommand(in);
                break;
            }
            case 276: {
                break;
            }
            case 513: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 514: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 515: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 516: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 517: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 518: {
                this.printRtGetValuesCommand(in);
                break;
            }
            case 519: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 520: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 521: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 522: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 523: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 524: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 525: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 526: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 527: {
                this.printRtDefaultCommand(in);
                break;
            }
            case 769: {
                this.printCtSuperclassCommand(in);
                break;
            }
            case 770: {
                this.printCtSetValuesCommand(in);
                break;
            }
            case 771: {
                this.printCtInvokeMethodCommand(in);
                break;
            }
            case 772: {
                this.printCtNewInstanceCommand(in);
                break;
            }
            case 1025: {
                this.printAtNewInstanceCommand(in);
                break;
            }
            case 1537: {
                this.printMDefaultCommand(in);
                break;
            }
            case 1538: {
                this.printMDefaultCommand(in);
                break;
            }
            case 1539: {
                this.printMDefaultCommand(in);
                break;
            }
            case 1540: {
                this.printMDefaultCommand(in);
                break;
            }
            case 1541: {
                this.printMDefaultCommand(in);
                break;
            }
            case 2305: {
                this.printOrDefaultCommand(in);
                break;
            }
            case 2306: {
                this.printOrGetValuesCommand(in);
                break;
            }
            case 2307: {
                this.printOrSetValuesCommand(in);
                break;
            }
            case 2309: {
                this.printOrDefaultCommand(in);
                break;
            }
            case 2310: {
                this.printOrInvokeMethodCommand(in);
                break;
            }
            case 2311: {
                this.printOrDefaultCommand(in);
                break;
            }
            case 2312: {
                this.printOrDefaultCommand(in);
                break;
            }
            case 2313: {
                this.printOrDefaultCommand(in);
                break;
            }
            case 2561: {
                this.printSrValueCommand(in);
                break;
            }
            case 2817: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2818: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2819: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2820: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2821: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2822: {
                this.printTrFramesCommand(in);
                break;
            }
            case 2823: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2824: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2825: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2826: {
                this.printTrStopCommand(in);
                break;
            }
            case 2827: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 2828: {
                this.printTrDefaultCommand(in);
                break;
            }
            case 3073: {
                this.printTgrDefaultCommand(in);
                break;
            }
            case 3074: {
                this.printTgrDefaultCommand(in);
                break;
            }
            case 3075: {
                this.printTgrDefaultCommand(in);
                break;
            }
            case 3329: {
                this.printArLengthCommand(in);
                break;
            }
            case 3330: {
                this.printArGetValuesCommand(in);
                break;
            }
            case 3331: {
                this.printArSetValuesCommand(in);
                break;
            }
            case 3585: {
                this.printClrVisibleClassesCommand(in);
                break;
            }
            case 3841: {
                this.printErSetCommand(in);
                break;
            }
            case 3842: {
                this.printErClearCommand(in);
                break;
            }
            case 3843: {
                break;
            }
            case 4097: {
                this.printSfGetValuesCommand(in);
                break;
            }
            case 4098: {
                this.printSfSetValuesCommand(in);
                break;
            }
            case 4099: {
                this.printSfDefaultCommand(in);
                break;
            }
            case 4100: {
                this.printSfDefaultCommand(in);
                break;
            }
            case 4353: {
                this.printCorReflectedTypeCommand(in);
                break;
            }
            case 16484: {
                this.printECompositeCommand(in);
                break;
            }
            case 32769: 
            case 32770: 
            case 32771: 
            case 32772: 
            case 32773: {
                throw new UnableToParseDataException("NOT MANAGED COMMAND", this.remainderData(in));
            }
            default: {
                int cset = commandId >> 8;
                int cmd = commandId & 0xFF;
                this.println(MessageFormat.format((String)"Unknown command : {0} {1}", (Object[])new String[]{"" + cset, "" + cmd}));
            }
        }
    }

    private void printReplyData(JdwpReplyPacket reply) throws IOException, UnableToParseDataException {
        byte[] data = reply.data();
        if (data == null) {
            return;
        }
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(data));
        JdwpCommandPacket command = TcpipSpy.getCommand(reply.getId());
        int commandId = command.getCommand();
        switch (commandId) {
            case 257: {
                this.printVmVersionReply(in);
                break;
            }
            case 258: {
                this.printVmClassesBySignatureReply(in);
                break;
            }
            case 259: {
                this.printVmAllClassesReply(in);
                break;
            }
            case 260: {
                this.printVmAllThreadsReply(in);
                break;
            }
            case 261: {
                this.printVmTopLevelThreadGroupReply(in);
                break;
            }
            case 262: {
                break;
            }
            case 263: {
                this.printVmIdSizesReply(in);
                break;
            }
            case 264: {
                break;
            }
            case 265: {
                break;
            }
            case 266: {
                break;
            }
            case 267: {
                this.printVmCreateStringReply(in);
                break;
            }
            case 268: {
                this.printVmCapabilitiesReply(in);
                break;
            }
            case 269: {
                this.printVmClassPathsReply(in);
                break;
            }
            case 270: {
                break;
            }
            case 271: {
                break;
            }
            case 272: {
                break;
            }
            case 273: {
                this.printVmCapabilitiesNewReply(in);
                break;
            }
            case 274: {
                break;
            }
            case 275: {
                break;
            }
            case 276: {
                this.printVmAllClassesWithGenericReply(in);
                break;
            }
            case 513: {
                this.printRtSignatureReply(in);
                break;
            }
            case 514: {
                this.printRtClassLoaderReply(in);
                break;
            }
            case 515: {
                this.printRtModifiersReply(in);
                break;
            }
            case 516: {
                this.printRtFieldsReply(in);
                break;
            }
            case 517: {
                this.printRtMethodsReply(in);
                break;
            }
            case 518: {
                this.printRtGetValuesReply(in);
                break;
            }
            case 519: {
                this.printRtSourceFileReply(in);
                break;
            }
            case 520: {
                this.printRtNestedTypesReply(in);
                break;
            }
            case 521: {
                this.printRtStatusReply(in);
                break;
            }
            case 522: {
                this.printRtInterfacesReply(in);
                break;
            }
            case 523: {
                this.printRtClassObjectReply(in);
                break;
            }
            case 524: {
                this.printRtSourceDebugExtensionReply(in);
                break;
            }
            case 525: {
                this.printRtSignatureWithGenericReply(in);
                break;
            }
            case 526: {
                this.printRtFieldsWithGenericReply(in);
                break;
            }
            case 527: {
                this.printRtMethodsWithGenericReply(in);
                break;
            }
            case 769: {
                this.printCtSuperclassReply(in);
                break;
            }
            case 770: {
                break;
            }
            case 771: {
                this.printCtInvokeMethodReply(in);
                break;
            }
            case 772: {
                this.printCtNewInstanceReply(in);
                break;
            }
            case 1025: {
                this.printAtNewInstanceReply(in);
                break;
            }
            case 1537: {
                this.printMLineTableReply(in);
                break;
            }
            case 1538: {
                this.printMVariableTableReply(in);
                break;
            }
            case 1539: {
                this.printMBytecodesReply(in);
                break;
            }
            case 1540: {
                this.printMIsObsoleteReply(in);
                break;
            }
            case 1541: {
                this.printMVariableTableWithGenericReply(in);
                break;
            }
            case 2305: {
                this.printOrReferenceTypeReply(in);
                break;
            }
            case 2306: {
                this.printOrGetValuesReply(in);
                break;
            }
            case 2307: {
                break;
            }
            case 2309: {
                this.printOrMonitorInfoReply(in);
                break;
            }
            case 2310: {
                this.printOrInvokeMethodReply(in);
                break;
            }
            case 2311: {
                break;
            }
            case 2312: {
                break;
            }
            case 2313: {
                this.printOrIsCollectedReply(in);
                break;
            }
            case 2561: {
                this.printSrValueReply(in);
                break;
            }
            case 2817: {
                this.printTrNameReply(in);
                break;
            }
            case 2818: {
                break;
            }
            case 2819: {
                break;
            }
            case 2820: {
                this.printTrStatusReply(in);
                break;
            }
            case 2821: {
                this.printTrThreadGroupReply(in);
                break;
            }
            case 2822: {
                this.printTrFramesReply(in);
                break;
            }
            case 2823: {
                this.printTrFrameCountReply(in);
                break;
            }
            case 2824: {
                this.printTrOwnedMonitorsReply(in);
                break;
            }
            case 2825: {
                this.printTrCurrentContendedMonitorReply(in);
                break;
            }
            case 2826: {
                break;
            }
            case 2827: {
                break;
            }
            case 2828: {
                this.printTrSuspendCountReply(in);
                break;
            }
            case 3073: {
                this.printTgrNameReply(in);
                break;
            }
            case 3074: {
                this.printTgrParentReply(in);
                break;
            }
            case 3075: {
                this.printTgrChildrenReply(in);
                break;
            }
            case 3329: {
                this.printArLengthReply(in);
                break;
            }
            case 3330: {
                this.printArGetValuesReply(in);
                break;
            }
            case 3331: {
                break;
            }
            case 3585: {
                this.printClrVisibleClassesReply(in);
                break;
            }
            case 3841: {
                this.printErSetReply(in);
                break;
            }
            case 3842: {
                break;
            }
            case 3843: {
                break;
            }
            case 4097: {
                this.printSfGetValuesReply(in);
                break;
            }
            case 4098: {
                break;
            }
            case 4099: {
                this.printSfThisObjectReply(in);
                break;
            }
            case 4100: {
                break;
            }
            case 4353: {
                this.printCorReflectedTypeReply(in);
                break;
            }
            case 32769: 
            case 32770: 
            case 32771: 
            case 32772: 
            case 32773: {
                throw new UnableToParseDataException("NOT MANAGED COMMAND", this.remainderData(in));
            }
            default: {
                int cset = commandId >> 8;
                int cmd = commandId & 0xFF;
                this.println(MessageFormat.format((String)"Unknown command : {0} {1}", (Object[])new String[]{"" + cset, "" + cmd}));
            }
        }
    }

    private void printRefTypeTag(byte refTypeTag) {
        this.printDescription("Type tag:");
        this.printRefTypeTagValue(refTypeTag);
        this.println();
    }

    private void printRefTypeTagValue(byte refTypeTag) {
        this.printHex(refTypeTag);
        this.print(" (");
        switch (refTypeTag) {
            case 1: {
                this.print("CLASS");
                break;
            }
            case 2: {
                this.print("INTERFACE");
                break;
            }
            case 3: {
                this.print("ARRAY");
                break;
            }
            default: {
                this.print("unknown");
            }
        }
        this.print(')');
    }

    private void printClassStatus(int status) {
        this.printDescription("Status:");
        this.printHex(status);
        this.print(" (");
        boolean spaceNeeded = false;
        if ((status & 1) != 0) {
            this.print("VERIFIED");
            spaceNeeded = true;
        }
        if ((status & 2) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PREPARED");
        }
        if ((status & 4) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("INITIALIZED");
        }
        if ((status & 8) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            }
            this.print("unknown");
        }
        this.println(')');
    }

    private void printClassModifiers(int modifiers) {
        this.printDescription("Modifiers:");
        this.printHex(modifiers);
        this.print(" (");
        boolean spaceNeeded = false;
        if ((modifiers & 1) != 0) {
            this.print("PUBLIC");
            spaceNeeded = true;
        }
        if ((modifiers & 2) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PRIVATE");
        }
        if ((modifiers & 4) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PROTECTED");
        }
        if ((modifiers & 8) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("STATIC");
        }
        if ((modifiers & 0x10) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("FINAL");
        }
        if ((modifiers & 0x20) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("SUPER");
        }
        if ((modifiers & 0x200) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("INTERFACE");
        }
        if ((modifiers & 0x400) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("ABSTRACT");
        }
        if ((modifiers & 0xF0001000) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("SYNTHETIC");
        }
        this.println(')');
    }

    private void printMethodModifiers(int modifiers) {
        this.printDescription("Modifiers:");
        this.printHex(modifiers);
        this.print(" (");
        boolean spaceNeeded = false;
        if ((modifiers & 1) != 0) {
            this.print("PUBLIC");
            spaceNeeded = true;
        }
        if ((modifiers & 2) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PRIVATE");
        }
        if ((modifiers & 4) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PROTECTED");
        }
        if ((modifiers & 8) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("STATIC");
        }
        if ((modifiers & 0x10) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("FINAL");
        }
        if ((modifiers & 0x20) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("SYNCHRONIZED");
        }
        if ((modifiers & 0x40) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("BRIDGE");
        }
        if ((modifiers & 0x80) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("VARARGS");
        }
        if ((modifiers & 0x100) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("NATIVE");
        }
        if ((modifiers & 0x400) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("ABSTRACT");
        }
        if ((modifiers & 0x800) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("STRICT");
        }
        if ((modifiers & 0xF0001000) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("SYNTHETIC");
        }
        this.println(')');
    }

    private void printFieldModifiers(int modifiers) {
        this.printDescription("Modifiers:");
        this.printHex(modifiers);
        this.print(" (");
        boolean spaceNeeded = false;
        if ((modifiers & 1) != 0) {
            this.print("PUBLIC");
            spaceNeeded = true;
        }
        if ((modifiers & 2) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PRIVATE");
        }
        if ((modifiers & 4) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("PROTECTED");
        }
        if ((modifiers & 8) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("STATIC");
        }
        if ((modifiers & 0x10) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("FINAL");
        }
        if ((modifiers & 0x40) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("VOLATILE");
        }
        if ((modifiers & 0x80) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("TRANSIENT");
        }
        if ((modifiers & 0x100) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("ENUM");
        }
        if ((modifiers & 0xF0001000) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            } else {
                spaceNeeded = true;
            }
            this.print("SYNTHETIC");
        }
        this.println(')');
    }

    private void printInvocationOptions(int invocationOptions) {
        this.printDescription("Invocation Options:");
        this.printHex(invocationOptions);
        this.print(" (");
        boolean spaceNeeded = false;
        if ((invocationOptions & 1) != 0) {
            this.print("SINGLE_THREADED");
            spaceNeeded = true;
        }
        if ((invocationOptions & 2) != 0) {
            if (spaceNeeded) {
                this.print(' ');
            }
            this.print("NONVIRTUAL");
        }
        this.println(')');
    }

    private void printThreadStatus(int threadStatus) {
        this.printDescription("Thread status:");
        this.printHex(threadStatus);
        this.print(" (");
        switch (threadStatus) {
            case 0: {
                this.print("ZOMBIE");
                break;
            }
            case 1: {
                this.print("RUNNING");
                break;
            }
            case 2: {
                this.print("SLEEPING");
                break;
            }
            case 3: {
                this.print("MONITOR");
                break;
            }
            case 4: {
                this.print("WAIT");
                break;
            }
            default: {
                this.print("unknown");
            }
        }
        this.println(')');
    }

    private void printSuspendStatus(int suspendStatus) {
        this.printDescription("Suspend status:");
        this.printHex(suspendStatus);
        this.print(" (");
        if ((suspendStatus & 1) != 0) {
            this.print("SUSPENDED");
        }
        this.println(')');
    }

    private void printEventKind(byte eventKind) {
        this.printDescription("Event kind:");
        this.printHex(eventKind);
        this.print(" (");
        switch (eventKind) {
            case 1: {
                this.print("SINGLE_STEP");
                break;
            }
            case 2: {
                this.print("BREAKPOINT");
                break;
            }
            case 3: {
                this.print("FRAME_POP");
                break;
            }
            case 4: {
                this.print("EXCEPTION");
                break;
            }
            case 5: {
                this.print("USER_DEFINED");
                break;
            }
            case 6: {
                this.print("THREAD_START");
                break;
            }
            case 7: {
                this.print("THREAD_END");
                break;
            }
            case 8: {
                this.print("CLASS_PREPARE");
                break;
            }
            case 9: {
                this.print("CLASS_UNLOAD");
                break;
            }
            case 10: {
                this.print("CLASS_LOAD");
                break;
            }
            case 20: {
                this.print("FIELD_ACCESS");
                break;
            }
            case 21: {
                this.print("FIELD_MODIFICATION");
                break;
            }
            case 30: {
                this.print("EXCEPTION_CATCH");
                break;
            }
            case 40: {
                this.print("METHOD_ENTRY");
                break;
            }
            case 41: {
                this.print("METHOD_EXIT");
                break;
            }
            case 90: {
                this.print("VM_INIT");
                break;
            }
            case 99: {
                this.print("VM_DEATH");
                break;
            }
            case 100: {
                this.print("VM_DISCONNECTED");
                break;
            }
            default: {
                this.print("unknown");
            }
        }
        this.println(')');
    }

    private void printSuspendPolicy(byte suspendPolicy) {
        this.printDescription("Suspend policy:");
        this.printHex(suspendPolicy);
        this.print(" (");
        switch (suspendPolicy) {
            case 0: {
                this.print("NONE");
                break;
            }
            case 1: {
                this.print("EVENT_THREAD");
                break;
            }
            case 2: {
                this.print("ALL");
                break;
            }
            default: {
                this.print("unknown");
            }
        }
        this.println(')');
    }

    private void printStepDepth(int setDepth) {
        this.printDescription("Step depth:");
        this.printHex(setDepth);
        this.print(" (");
        switch (setDepth) {
            case 0: {
                this.print("INTO");
                break;
            }
            case 1: {
                this.print("OVER");
                break;
            }
            case 2: {
                this.print("OUT");
                break;
            }
            default: {
                this.print("unknown");
            }
        }
        this.println(')');
    }

    private void printStepSize(int setSize) {
        this.printDescription("Step size:");
        this.printHex(setSize);
        this.print(" (");
        switch (setSize) {
            case 0: {
                this.print("MIN");
                break;
            }
            case 1: {
                this.print("LINE");
                break;
            }
            default: {
                this.print("unknown");
            }
        }
        this.println(')');
    }

    private void printVmVersionReply(DataInputStream in) throws IOException {
        String description = VerbosePacketStream.readString(in);
        int jdwpMajor = in.readInt();
        int jdwpMinor = in.readInt();
        String vmVersion = VerbosePacketStream.readString(in);
        String vmName = VerbosePacketStream.readString(in);
        this.println("VM Description:", description);
        this.println("JDWP Major Version:", jdwpMajor);
        this.println("JDWP Minor Version:", jdwpMinor);
        this.println("VM Version:", vmVersion);
        this.println("VM Name:", vmName);
    }

    private void printVmClassesBySignatureCommand(DataInputStream in) throws IOException {
        String signature = VerbosePacketStream.readString(in);
        this.println("Class signature:", signature);
    }

    private void printVmClassesBySignatureReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int classesCount = in.readInt();
        this.println("Classes count:", classesCount);
        int i = 0;
        while (i < classesCount) {
            byte refTypeTag = in.readByte();
            long typeId = this.readReferenceTypeID(in);
            int status = in.readInt();
            this.printRefTypeTag(refTypeTag);
            this.printlnReferenceTypeId("Type id:", typeId);
            this.printClassStatus(status);
            ++i;
        }
    }

    private void printVmAllClassesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int classesCount = in.readInt();
        this.println("Classes count:", classesCount);
        int i = 0;
        while (i < classesCount) {
            byte refTypeTag = in.readByte();
            long typeId = this.readReferenceTypeID(in);
            String signature = VerbosePacketStream.readString(in);
            int status = in.readInt();
            this.printRefTypeTag(refTypeTag);
            this.printlnReferenceTypeId("Type id:", typeId);
            this.println("Class signature:", signature);
            this.printClassStatus(status);
            ++i;
        }
    }

    private void printVmAllThreadsReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int threadsCount = in.readInt();
        this.println("Threads count:", threadsCount);
        int i = 0;
        while (i < threadsCount) {
            long threadId = this.readObjectID(in);
            this.printlnObjectId("Thread id:", threadId);
            ++i;
        }
    }

    private void printVmTopLevelThreadGroupReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int groupsCount = in.readInt();
        this.println("Threads count:", groupsCount);
        int i = 0;
        while (i < groupsCount) {
            long threadGroupId = this.readObjectID(in);
            this.printlnObjectId("Thread id:", threadGroupId);
            ++i;
        }
    }

    private void printVmIdSizesReply(DataInputStream in) throws IOException {
        int fieldIDSize = in.readInt();
        int methodIDSize = in.readInt();
        int objectIDSize = in.readInt();
        int referenceTypeIDSize = in.readInt();
        int frameIDSize = in.readInt();
        this.println("Field ID size:", fieldIDSize);
        this.println("Method ID size:", methodIDSize);
        this.println("Object ID size:", objectIDSize);
        this.println("Reference type ID size:", referenceTypeIDSize);
        this.println("Frame ID size:", frameIDSize);
        TcpipSpy.setFieldIDSize(fieldIDSize);
        TcpipSpy.setMethodIDSize(methodIDSize);
        TcpipSpy.setObjectIDSize(objectIDSize);
        TcpipSpy.setReferenceTypeIDSize(referenceTypeIDSize);
        TcpipSpy.setFrameIDSize(frameIDSize);
        TcpipSpy.setHasSizes(true);
    }

    private void printVmExitCommand(DataInputStream in) throws IOException {
        int exitCode = in.readInt();
        this.println("Exit code:", exitCode);
    }

    private void printVmCreateStringCommand(DataInputStream in) throws IOException {
        String string = VerbosePacketStream.readString(in);
        this.println("String:", string);
    }

    private void printVmCreateStringReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long stringId = this.readObjectID(in);
        this.printlnObjectId("String id:", stringId);
    }

    private void printVmCapabilitiesReply(DataInputStream in) throws IOException {
        boolean canWatchFieldModification = in.readBoolean();
        boolean canWatchFieldAccess = in.readBoolean();
        boolean canGetBytecodes = in.readBoolean();
        boolean canGetSyntheticAttribute = in.readBoolean();
        boolean canGetOwnedMonitorInfo = in.readBoolean();
        boolean canGetCurrentContendedMonitor = in.readBoolean();
        boolean canGetMonitorInfo = in.readBoolean();
        this.println("Can watch field modification:", canWatchFieldModification);
        this.println("can watch field access:", canWatchFieldAccess);
        this.println("Can get bytecodes:", canGetBytecodes);
        this.println("Can get synthetic attribute:", canGetSyntheticAttribute);
        this.println("Can get owned monitor info:", canGetOwnedMonitorInfo);
        this.println("Can get currently contended monitor:", canGetCurrentContendedMonitor);
        this.println("Can get monitor info:", canGetMonitorInfo);
    }

    private void printVmClassPathsReply(DataInputStream in) throws IOException {
        String baseDir = VerbosePacketStream.readString(in);
        this.println("Base directory:", baseDir);
        int classpathCount = in.readInt();
        this.println("Classpaths count:", classpathCount);
        int i = 0;
        while (i < classpathCount) {
            String path = VerbosePacketStream.readString(in);
            this.println("Classpath:", path);
            ++i;
        }
        int bootclasspathCount = in.readInt();
        this.println("Bootclasspaths count:", bootclasspathCount);
        int i2 = 0;
        while (i2 < bootclasspathCount) {
            String path = VerbosePacketStream.readString(in);
            this.println("Bootclasspath:", path);
            ++i2;
        }
    }

    private void printVmDisposeObjectsCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        int requestsCount = in.readInt();
        this.println("Requests Count:", requestsCount);
        int i = 0;
        while (i < requestsCount) {
            long objectId = this.readObjectID(in);
            int refsCounts = in.readInt();
            this.printlnObjectId("Object id:", objectId);
            this.println("References count:", refsCounts);
            ++i;
        }
    }

    private void printVmCapabilitiesNewReply(DataInputStream in) throws IOException {
        this.printVmCapabilitiesReply(in);
        boolean canRedefineClasses = in.readBoolean();
        boolean canAddMethod = in.readBoolean();
        boolean canUnrestrictedlyRedefineClasses = in.readBoolean();
        boolean canPopFrames = in.readBoolean();
        boolean canUseInstanceFilters = in.readBoolean();
        boolean canGetSourceDebugExtension = in.readBoolean();
        boolean canRequestVMDeathEvent = in.readBoolean();
        boolean canSetDefaultStratum = in.readBoolean();
        boolean reserved16 = in.readBoolean();
        boolean reserved17 = in.readBoolean();
        boolean reserved18 = in.readBoolean();
        boolean reserved19 = in.readBoolean();
        boolean reserved20 = in.readBoolean();
        boolean reserved21 = in.readBoolean();
        boolean reserved22 = in.readBoolean();
        boolean reserved23 = in.readBoolean();
        boolean reserved24 = in.readBoolean();
        boolean reserved25 = in.readBoolean();
        boolean reserved26 = in.readBoolean();
        boolean reserved27 = in.readBoolean();
        boolean reserved28 = in.readBoolean();
        boolean reserved29 = in.readBoolean();
        boolean reserved30 = in.readBoolean();
        boolean reserved31 = in.readBoolean();
        boolean reserved32 = in.readBoolean();
        this.println("Can redefine classes:", canRedefineClasses);
        this.println("Can add method:", canAddMethod);
        this.println("Can unrestrictedly rd. classes:", canUnrestrictedlyRedefineClasses);
        this.println("Can pop frames:", canPopFrames);
        this.println("Can use instance filters:", canUseInstanceFilters);
        this.println("Can get source debug extension:", canGetSourceDebugExtension);
        this.println("Can request VMDeath event:", canRequestVMDeathEvent);
        this.println("Can set default stratum:", canSetDefaultStratum);
        this.println("Reserved:", reserved16);
        this.println("Reserved:", reserved17);
        this.println("Reserved:", reserved18);
        this.println("Reserved:", reserved19);
        this.println("Reserved:", reserved20);
        this.println("Reserved:", reserved21);
        this.println("Reserved:", reserved22);
        this.println("Reserved:", reserved23);
        this.println("Reserved:", reserved24);
        this.println("Reserved:", reserved25);
        this.println("Reserved:", reserved26);
        this.println("Reserved:", reserved27);
        this.println("Reserved:", reserved28);
        this.println("Reserved:", reserved29);
        this.println("Reserved:", reserved30);
        this.println("Reserved:", reserved31);
        this.println("Reserved:", reserved32);
    }

    private void printVmRedefineClassCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        int typesCount = in.readInt();
        this.println("Types count:", typesCount);
        int i = 0;
        while (i < typesCount) {
            long typeId = this.readReferenceTypeID(in);
            int classfileLength = in.readInt();
            this.printlnReferenceTypeId("Type id:", typeId);
            this.println("Classfile length:", classfileLength);
            while ((classfileLength -= in.skipBytes(classfileLength)) != 0) {
            }
            this.printDescription("Class bytes:");
            this.println("skipped");
            ++i;
        }
    }

    private void printVmSetDefaultStratumCommand(DataInputStream in) throws IOException {
        String stratumId = VerbosePacketStream.readString(in);
        this.println("Stratum id:", stratumId);
    }

    private void printVmAllClassesWithGenericReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int classesCount = in.readInt();
        this.println("Classes count:", classesCount);
        int i = 0;
        while (i < classesCount) {
            byte refTypeTag = in.readByte();
            long typeId = this.readReferenceTypeID(in);
            String signature = VerbosePacketStream.readString(in);
            String genericSignature = VerbosePacketStream.readString(in);
            int status = in.readInt();
            this.printRefTypeTag(refTypeTag);
            this.printlnReferenceTypeId("Type id:", typeId);
            this.println("Class signature:", signature);
            this.println("Generic class signature:", genericSignature);
            this.printClassStatus(status);
            ++i;
        }
    }

    private void printRtDefaultCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long typeId = this.readReferenceTypeID(in);
        this.printlnReferenceTypeId("Type id:", typeId);
    }

    private void printRtSignatureReply(DataInputStream in) throws IOException {
        String signature = VerbosePacketStream.readString(in);
        this.println("Signature:", signature);
    }

    private void printRtClassLoaderReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long classLoaderId = this.readObjectID(in);
        this.printlnObjectId("ClassLoader id:", classLoaderId);
    }

    private void printRtModifiersReply(DataInputStream in) throws IOException {
        int modifiers = in.readInt();
        this.printClassModifiers(modifiers);
    }

    private void printRtFieldsReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int fieldsCount = in.readInt();
        this.println("Fields count:", fieldsCount);
        int i = 0;
        while (i < fieldsCount) {
            long fieldId = this.readFieldID(in);
            String name = VerbosePacketStream.readString(in);
            String signature = VerbosePacketStream.readString(in);
            int modifiers = in.readInt();
            this.printlnFieldId("Field id:", fieldId);
            this.println("Name:", name);
            this.println("Signature:", signature);
            this.printFieldModifiers(modifiers);
            ++i;
        }
    }

    private void printRtMethodsReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int methodsCount = in.readInt();
        this.println("Methods count:", methodsCount);
        int i = 0;
        while (i < methodsCount) {
            long methodId = this.readMethodID(in);
            String name = VerbosePacketStream.readString(in);
            String signature = VerbosePacketStream.readString(in);
            int modifiers = in.readInt();
            this.printlnMethodId("Method id:", methodId);
            this.println("Name:", name);
            this.println("Signature:", signature);
            this.printMethodModifiers(modifiers);
            ++i;
        }
    }

    private void printRtGetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long typeId = this.readReferenceTypeID(in);
        int fieldsCount = in.readInt();
        this.printlnReferenceTypeId("Type id:", typeId);
        this.println("Fields count:", fieldsCount);
        int i = 0;
        while (i < fieldsCount) {
            long fieldId = this.readFieldID(in);
            this.printlnFieldId("Field id:", fieldId);
            ++i;
        }
    }

    private void printRtGetValuesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int valuesCount = in.readInt();
        this.println("Values count:", valuesCount);
        int i = 0;
        while (i < valuesCount) {
            this.readAndPrintlnTaggedValue("Value:", in);
            ++i;
        }
    }

    private void printRtSourceFileReply(DataInputStream in) throws IOException {
        String sourceFile = VerbosePacketStream.readString(in);
        this.println("Source file:", sourceFile);
    }

    private void printRtNestedTypesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int typesCount = in.readInt();
        this.println("Types count:", typesCount);
        int i = 0;
        while (i < typesCount) {
            byte typeTag = in.readByte();
            long typeId = this.readReferenceTypeID(in);
            this.printRefTypeTag(typeTag);
            this.printlnReferenceTypeId("Type id:", typeId);
            ++i;
        }
    }

    private void printRtStatusReply(DataInputStream in) throws IOException {
        int status = in.readInt();
        this.printClassStatus(status);
    }

    private void printRtInterfacesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int interfacesCount = in.readInt();
        this.println("Interfaces count:", interfacesCount);
        int i = 0;
        while (i < interfacesCount) {
            long interfaceId = this.readReferenceTypeID(in);
            this.printlnReferenceTypeId("Interface type id:", interfaceId);
            ++i;
        }
    }

    private void printRtClassObjectReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long classObjectId = this.readObjectID(in);
        this.printlnObjectId("Class object id:", classObjectId);
    }

    private void printRtSourceDebugExtensionReply(DataInputStream in) throws IOException {
        String extension = VerbosePacketStream.readString(in);
        this.println("Extension:", extension);
    }

    private void printRtSignatureWithGenericReply(DataInputStream in) throws IOException {
        String signature = VerbosePacketStream.readString(in);
        String genericSignature = VerbosePacketStream.readString(in);
        this.println("Signature:", signature);
        this.println("Generic signature:", genericSignature);
    }

    private void printRtFieldsWithGenericReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int fieldsCount = in.readInt();
        this.println("Fields count:", fieldsCount);
        int i = 0;
        while (i < fieldsCount) {
            long fieldId = this.readFieldID(in);
            String name = VerbosePacketStream.readString(in);
            String signature = VerbosePacketStream.readString(in);
            String genericSignature = VerbosePacketStream.readString(in);
            int modifiers = in.readInt();
            this.printlnFieldId("Field id:", fieldId);
            this.println("Name:", name);
            this.println("Signature:", signature);
            this.println("Generic signature:", genericSignature);
            this.printFieldModifiers(modifiers);
            ++i;
        }
    }

    private void printRtMethodsWithGenericReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int methodsCount = in.readInt();
        this.println("Methods count:", methodsCount);
        int i = 0;
        while (i < methodsCount) {
            long methodId = this.readMethodID(in);
            String name = VerbosePacketStream.readString(in);
            String genericSignature = VerbosePacketStream.readString(in);
            int modifiers = in.readInt();
            this.printlnMethodId("Method id:", methodId);
            this.println("Name:", name);
            this.println("Generic signature:", genericSignature);
            this.printMethodModifiers(modifiers);
            ++i;
        }
    }

    private void printCtSuperclassCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long classTypeId = this.readReferenceTypeID(in);
        this.printlnReferenceTypeId("Class type id:", classTypeId);
    }

    private void printCtSuperclassReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long superclassTypeId = this.readReferenceTypeID(in);
        this.printlnReferenceTypeId("Superclass type id:", superclassTypeId);
    }

    private void printCtSetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long classTypeId = this.readReferenceTypeID(in);
        int fieldsCount = in.readInt();
        this.printlnReferenceTypeId("Class type id:", classTypeId);
        this.println("Fields count:", fieldsCount);
        throw new UnableToParseDataException("List of values: NOT MANAGED", this.remainderData(in));
    }

    private void printCtInvokeMethodCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long classTypeId = this.readReferenceTypeID(in);
        long threadId = this.readObjectID(in);
        long methodId = this.readMethodID(in);
        int argumentsCount = in.readInt();
        this.printlnReferenceTypeId("Class type id:", classTypeId);
        this.printlnObjectId("Thread id:", threadId);
        this.printlnMethodId("Method id:", methodId);
        this.println("Arguments count:", argumentsCount);
        int i = 0;
        while (i < argumentsCount) {
            this.readAndPrintlnTaggedValue("Argument:", in);
            ++i;
        }
        int invocationOptions = in.readInt();
        this.printInvocationOptions(invocationOptions);
    }

    private void printCtInvokeMethodReply(DataInputStream in) throws IOException, UnableToParseDataException {
        this.readAndPrintlnTaggedValue("Return value:", in);
        byte signatureByte = in.readByte();
        long exception = this.readObjectID(in);
        this.printlnTaggedObjectId("Exception object id:", exception, signatureByte);
    }

    private void printCtNewInstanceCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        this.printCtInvokeMethodCommand(in);
    }

    private void printCtNewInstanceReply(DataInputStream in) throws IOException, UnableToParseDataException {
        byte objectSignatureByte = in.readByte();
        long newObjectId = this.readObjectID(in);
        byte exceptionSignatureByte = in.readByte();
        long exception = this.readObjectID(in);
        this.printlnTaggedObjectId("New object id:", newObjectId, objectSignatureByte);
        this.printlnTaggedObjectId("Exception object id:", exception, exceptionSignatureByte);
    }

    private void printAtNewInstanceCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long arrayTypeId = this.readReferenceTypeID(in);
        int length = in.readInt();
        this.printlnReferenceTypeId("Array type id:", arrayTypeId);
        this.println("Length:", length);
    }

    private void printAtNewInstanceReply(DataInputStream in) throws IOException, UnableToParseDataException {
        byte signatureByte = in.readByte();
        long newArrayId = this.readObjectID(in);
        this.printlnTaggedObjectId("New array id:", newArrayId, signatureByte);
    }

    private void printMDefaultCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long classTypeId = this.readReferenceTypeID(in);
        long methodId = this.readMethodID(in);
        this.printlnReferenceTypeId("Class type id:", classTypeId);
        this.printlnMethodId("Method id:", methodId);
    }

    private void printMLineTableReply(DataInputStream in) throws IOException {
        long start = in.readLong();
        long end = in.readLong();
        int lines = in.readInt();
        this.println("Lowest valid code index:", start);
        this.println("Highest valid code index:", end);
        this.println("Number of lines:", lines);
        int i = 0;
        while (i < lines) {
            long lineCodeIndex = in.readLong();
            int lineNumber = in.readInt();
            this.println("Line code Index:", lineCodeIndex);
            this.println("Line number:", lineNumber);
            ++i;
        }
    }

    private void printMVariableTableReply(DataInputStream in) throws IOException {
        int slotsUsedByArgs = in.readInt();
        int variablesCount = in.readInt();
        this.println("Nb of slots used by all args:", slotsUsedByArgs);
        this.println("Nb of variables:", variablesCount);
        int i = 0;
        while (i < variablesCount) {
            long codeIndex = in.readLong();
            String name = VerbosePacketStream.readString(in);
            String signature = VerbosePacketStream.readString(in);
            int length = in.readInt();
            int slotId = in.readInt();
            this.println("First code index:", codeIndex);
            this.println("Variable name:", name);
            this.println("Variable type signature:", signature);
            this.println("Code index length:", length);
            this.println("Slot id:", slotId);
            ++i;
        }
    }

    private void printMBytecodesReply(DataInputStream in) throws IOException {
        int bytes = in.readInt();
        this.println("Nb of bytes:", bytes);
        while ((bytes -= in.skipBytes(bytes)) != 0) {
        }
        this.printDescription("Method bytes:");
        this.println("skipped");
    }

    private void printMIsObsoleteReply(DataInputStream in) throws IOException {
        boolean isObsolete = in.readBoolean();
        this.println("Is obsolete:", isObsolete);
    }

    private void printMVariableTableWithGenericReply(DataInputStream in) throws IOException {
        int slotsUsedByArgs = in.readInt();
        int variablesCount = in.readInt();
        this.println("Nb of slots used by all args:", slotsUsedByArgs);
        this.println("Nb of variables:", variablesCount);
        int i = 0;
        while (i < variablesCount) {
            long codeIndex = in.readLong();
            String name = VerbosePacketStream.readString(in);
            String signature = VerbosePacketStream.readString(in);
            String genericSignature = VerbosePacketStream.readString(in);
            int length = in.readInt();
            int slotId = in.readInt();
            this.println("First code index:", codeIndex);
            this.println("Variable name:", name);
            this.println("Variable type signature:", signature);
            this.println("Var. type generic signature:", genericSignature);
            this.println("Code index length:", length);
            this.println("Slot id:", slotId);
            ++i;
        }
    }

    private void printOrDefaultCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long objectId = this.readObjectID(in);
        this.println("Object id:", objectId);
    }

    private void printOrReferenceTypeReply(DataInputStream in) throws IOException, UnableToParseDataException {
        byte refTypeTag = in.readByte();
        long typeId = this.readReferenceTypeID(in);
        this.printRefTypeTag(refTypeTag);
        this.printlnReferenceTypeId("Type id:", typeId);
    }

    private void printOrGetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long objectId = this.readObjectID(in);
        int fieldsCount = in.readInt();
        this.println("Object id:", objectId);
        this.println("Fields count:", fieldsCount);
        int i = 0;
        while (i < fieldsCount) {
            long fieldId = this.readFieldID(in);
            this.println("Field id:", fieldId);
            ++i;
        }
    }

    private void printOrGetValuesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int valuesCount = in.readInt();
        this.println("Values count:", valuesCount);
        int i = 0;
        while (i < valuesCount) {
            this.readAndPrintlnTaggedValue("Value:", in);
            ++i;
        }
    }

    private void printOrSetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long objectId = this.readObjectID(in);
        int fieldsCount = in.readInt();
        this.println("Object id:", objectId);
        this.println("Fields count:", fieldsCount);
        throw new UnableToParseDataException("List of values: NOT MANAGED", this.remainderData(in));
    }

    private void printOrMonitorInfoReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long ownerThreadId = this.readObjectID(in);
        int entryCount = in.readInt();
        int waiters = in.readInt();
        this.printlnObjectId("Owner thread id:", ownerThreadId);
        this.println("Entry count:", entryCount);
        this.println("Nb of waiters:", waiters);
        int i = 0;
        while (i < waiters) {
            long waiterThreadId = this.readObjectID(in);
            this.printlnObjectId("Waiting thread id:", waiterThreadId);
            ++i;
        }
    }

    private void printOrInvokeMethodCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long objectId = this.readObjectID(in);
        long threadId = this.readObjectID(in);
        long classTypeId = this.readReferenceTypeID(in);
        long methodId = this.readMethodID(in);
        int argsCount = in.readInt();
        this.printlnObjectId("Object id:", objectId);
        this.printlnObjectId("Thread id:", threadId);
        this.printlnReferenceTypeId("Class type id:", classTypeId);
        this.printlnMethodId("Method id:", methodId);
        this.println("Arguments count:", argsCount);
        int i = 0;
        while (i < argsCount) {
            this.readAndPrintlnTaggedValue("Argument:", in);
            ++i;
        }
        int invocationOption = in.readInt();
        this.printInvocationOptions(invocationOption);
    }

    private void printOrInvokeMethodReply(DataInputStream in) throws IOException, UnableToParseDataException {
        this.readAndPrintlnTaggedValue("Return value:", in);
        byte signatureByte = in.readByte();
        long exception = this.readObjectID(in);
        this.printlnTaggedObjectId("Exception object id:", exception, signatureByte);
    }

    private void printOrIsCollectedReply(DataInputStream in) throws IOException {
        boolean isCollected = in.readBoolean();
        this.println("Is collected:", isCollected);
    }

    private void printSrValueCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long stringObjectId = this.readObjectID(in);
        this.printlnObjectId("String object id:", stringObjectId);
    }

    private void printSrValueReply(DataInputStream in) throws IOException {
        String value = VerbosePacketStream.readString(in);
        this.println("Value:", value);
    }

    private void printTrDefaultCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadId = this.readObjectID(in);
        this.printlnObjectId("Thread id:", threadId);
    }

    private void printTrNameReply(DataInputStream in) throws IOException {
        String threadName = VerbosePacketStream.readString(in);
        this.println("Name:", threadName);
    }

    private void printTrStatusReply(DataInputStream in) throws IOException {
        int threadStatus = in.readInt();
        int suspendStatus = in.readInt();
        this.printThreadStatus(threadStatus);
        this.printSuspendStatus(suspendStatus);
    }

    private void printTrThreadGroupReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadGroupId = this.readObjectID(in);
        this.printlnObjectId("Thread group id:", threadGroupId);
    }

    private void printTrFramesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadId = this.readObjectID(in);
        int startFrame = in.readInt();
        int length = in.readInt();
        this.printlnObjectId("Thread id:", threadId);
        this.println("First frame:", startFrame);
        this.println("Number of frame:", length);
    }

    private void printTrFramesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int framesCount = in.readInt();
        this.println("Frames count:", framesCount);
        int i = 0;
        while (i < framesCount) {
            long frameId = this.readFrameID(in);
            this.printlnFrameId("Frame id:", frameId);
            this.readAndPrintLocation(in);
            ++i;
        }
    }

    private void printTrFrameCountReply(DataInputStream in) throws IOException {
        int framesCount = in.readInt();
        this.println("Frames count:", framesCount);
    }

    private void printTrOwnedMonitorsReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int monitorsCount = in.readInt();
        this.println("Monitors count:", monitorsCount);
        int i = 0;
        while (i < monitorsCount) {
            byte signatureByte = in.readByte();
            long monitorObjectId = this.readObjectID(in);
            this.printlnTaggedObjectId("Monitor object id:", monitorObjectId, signatureByte);
            ++i;
        }
    }

    private void printTrCurrentContendedMonitorReply(DataInputStream in) throws IOException, UnableToParseDataException {
        byte signatureByte = in.readByte();
        long monitorObjectId = this.readObjectID(in);
        this.printlnTaggedObjectId("Monitor object id:", monitorObjectId, signatureByte);
    }

    private void printTrStopCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadId = this.readObjectID(in);
        long exceptionObjectId = this.readObjectID(in);
        this.printlnObjectId("Thread id:", threadId);
        this.printlnObjectId("Exception object id:", exceptionObjectId);
    }

    private void printTrSuspendCountReply(DataInputStream in) throws IOException {
        int suspendCount = in.readInt();
        this.println("Suspend count:", suspendCount);
    }

    private void printTgrDefaultCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadGroupId = this.readObjectID(in);
        this.printlnObjectId("Thread group id:", threadGroupId);
    }

    private void printTgrNameReply(DataInputStream in) throws IOException {
        String name = VerbosePacketStream.readString(in);
        this.println("Name:", name);
    }

    private void printTgrParentReply(DataInputStream in) throws IOException, UnableToParseDataException {
        long parentThreadGroupId = this.readObjectID(in);
        this.printlnObjectId("Parent thread group id:", parentThreadGroupId);
    }

    private void printTgrChildrenReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int childThreadsCount = in.readInt();
        this.println("Child threads count:", childThreadsCount);
        int i = 0;
        while (i < childThreadsCount) {
            long childThreadId = this.readObjectID(in);
            this.printlnObjectId("Child thread id:", childThreadId);
            ++i;
        }
        int childGroupThreadsCount = in.readInt();
        this.println("Child group threads count:", childGroupThreadsCount);
        int i2 = 0;
        while (i2 < childGroupThreadsCount) {
            long childGroupThreadId = this.readObjectID(in);
            this.printlnObjectId("Child group thread id:", childGroupThreadId);
            ++i2;
        }
    }

    private void printArLengthCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long arrayObjectId = this.readObjectID(in);
        this.printlnObjectId("Array object id:", arrayObjectId);
    }

    private void printArLengthReply(DataInputStream in) throws IOException {
        int length = in.readInt();
        this.println("Length:", length);
    }

    private void printArGetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long arrayObjectId = this.readObjectID(in);
        int firstIndex = in.readInt();
        int length = in.readInt();
        this.printlnObjectId("Array object id:", arrayObjectId);
        this.println("First index:", firstIndex);
        this.println("Length:", length);
    }

    private void printArGetValuesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        this.readAndPrintArrayRegion(in);
    }

    private void printArSetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long arrayObjectId = this.readObjectID(in);
        int firstIndex = in.readInt();
        int length = in.readInt();
        this.printlnObjectId("Array object id:", arrayObjectId);
        this.println("First index:", firstIndex);
        this.println("Length:", length);
        throw new UnableToParseDataException("List of values: NOT MANAGED", this.remainderData(in));
    }

    private void printClrVisibleClassesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long classLoaderObjectId = this.readObjectID(in);
        this.printlnObjectId("Class loader object id:", classLoaderObjectId);
    }

    private void printClrVisibleClassesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int classesCount = in.readInt();
        this.println("Classes count:", classesCount);
        int i = 0;
        while (i < classesCount) {
            byte refTypeTag = in.readByte();
            long typeId = this.readReferenceTypeID(in);
            this.printRefTypeTag(refTypeTag);
            this.printlnReferenceTypeId("Type id:", typeId);
            ++i;
        }
    }

    private void printErSetCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        byte eventKind = in.readByte();
        byte suspendPolicy = in.readByte();
        int modifiersCount = in.readInt();
        this.printEventKind(eventKind);
        this.printSuspendPolicy(suspendPolicy);
        this.println("Modifiers count:", modifiersCount);
        int i = 0;
        while (i < modifiersCount) {
            byte modKind = in.readByte();
            this.printDescription("Modifier kind:");
            this.printHex(modKind);
            switch (modKind) {
                case 1: {
                    this.println(" (Count)");
                    int count = in.readInt();
                    this.println("Count:", count);
                    break;
                }
                case 2: {
                    this.println(" (Conditional)");
                    int exprId = in.readInt();
                    this.println("Expression id:", exprId);
                    break;
                }
                case 3: {
                    this.println(" (ThreadOnly)");
                    long threadId = this.readObjectID(in);
                    this.printlnObjectId("Thread id:", threadId);
                    break;
                }
                case 4: {
                    this.println(" (ClassOnly)");
                    long classId = this.readReferenceTypeID(in);
                    this.printlnReferenceTypeId("Class type id:", classId);
                    break;
                }
                case 5: {
                    this.println(" (ClassMatch)");
                    String classPatern = VerbosePacketStream.readString(in);
                    this.println("Class pattern:", classPatern);
                    break;
                }
                case 6: {
                    this.println(" (ClassExclude)");
                    String classPatern = VerbosePacketStream.readString(in);
                    this.println("Class pattern:", classPatern);
                    break;
                }
                case 7: {
                    this.println(" (LocationOnly)");
                    this.readAndPrintLocation(in);
                    break;
                }
                case 8: {
                    this.println(" (ExceptionOnly)");
                    long typeId = this.readReferenceTypeID(in);
                    boolean caught = in.readBoolean();
                    boolean uncaught = in.readBoolean();
                    this.printlnReferenceTypeId("Exception type id:", typeId);
                    this.println("Caught:", caught);
                    this.println("Uncaught:", uncaught);
                    break;
                }
                case 9: {
                    this.println(" (FieldOnly)");
                    long declaringTypeId = this.readReferenceTypeID(in);
                    long fieldId = this.readFieldID(in);
                    this.printlnReferenceTypeId("Declaring type id:", declaringTypeId);
                    this.printlnFieldId("Field id:", fieldId);
                    break;
                }
                case 10: {
                    this.println(" (Step)");
                    long threadId = this.readObjectID(in);
                    int stepSize = in.readInt();
                    int stepDepth = in.readInt();
                    this.printlnObjectId("Thread id:", threadId);
                    this.printStepSize(stepSize);
                    this.printStepDepth(stepDepth);
                    break;
                }
                case 11: {
                    this.println(" (InstanceOnly)");
                    long objectId = this.readObjectID(in);
                    this.printlnObjectId("Object id:", objectId);
                }
            }
            ++i;
        }
    }

    private void printErSetReply(DataInputStream in) throws IOException {
        int requestId = in.readInt();
        this.println("Request id:", requestId);
    }

    private void printErClearCommand(DataInputStream in) throws IOException {
        byte eventKind = in.readByte();
        int requestId = in.readInt();
        this.printEventKind(eventKind);
        this.println("Request id:", requestId);
    }

    private void printSfDefaultCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadId = this.readObjectID(in);
        long frameId = this.readFrameID(in);
        this.printlnObjectId("Thread object id:", threadId);
        this.printlnFrameId("Frame id:", frameId);
    }

    private void printSfGetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadId = this.readObjectID(in);
        long frameId = this.readFrameID(in);
        int slotsCount = in.readInt();
        this.printlnObjectId("Thread object id:", threadId);
        this.printlnFrameId("Frame id:", frameId);
        this.println("Slots count:", slotsCount);
        int i = 0;
        while (i < slotsCount) {
            int slotIndex = in.readInt();
            byte signatureTag = in.readByte();
            this.println("Slot index:", slotIndex);
            this.printDescription("Signature tag:");
            this.printSignatureByte(signatureTag, true);
            this.println();
            ++i;
        }
    }

    private void printSfGetValuesReply(DataInputStream in) throws IOException, UnableToParseDataException {
        int valuesCount = in.readInt();
        this.println("Values count:", valuesCount);
        int i = 0;
        while (i < valuesCount) {
            this.readAndPrintlnTaggedValue("Value:", in);
            ++i;
        }
    }

    private void printSfSetValuesCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long threadId = this.readObjectID(in);
        long frameId = this.readFrameID(in);
        int slotsCount = in.readInt();
        this.printlnObjectId("Thread object id:", threadId);
        this.printlnFrameId("Frame id:", frameId);
        this.println("Slots count:", slotsCount);
        int i = 0;
        while (i < slotsCount) {
            int slotIndex = in.readInt();
            this.println("Slot index:", slotIndex);
            this.readAndPrintlnTaggedValue("Values:", in);
            ++i;
        }
    }

    private void printSfThisObjectReply(DataInputStream in) throws IOException, UnableToParseDataException {
        byte signatureByte = in.readByte();
        long objectId = this.readObjectID(in);
        this.printlnTaggedObjectId("'this' object id:", objectId, signatureByte);
    }

    private void printCorReflectedTypeCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        long classObjectId = this.readObjectID(in);
        this.printlnObjectId("Class object id:", classObjectId);
    }

    private void printCorReflectedTypeReply(DataInputStream in) throws IOException, UnableToParseDataException {
        byte refTypeTag = in.readByte();
        long typeId = this.readReferenceTypeID(in);
        this.printRefTypeTag(refTypeTag);
        this.printlnReferenceTypeId("Type id:", typeId);
    }

    private void printECompositeCommand(DataInputStream in) throws IOException, UnableToParseDataException {
        byte suspendPolicy = in.readByte();
        int eventsCount = in.readInt();
        this.printSuspendPolicy(suspendPolicy);
        this.println("Events count:", eventsCount);
        int i = 0;
        while (i < eventsCount) {
            byte eventKind = in.readByte();
            int requestId = in.readInt();
            this.printEventKind(eventKind);
            this.println("Request id:", requestId);
            switch (eventKind) {
                case 90: {
                    long threadId = this.readObjectID(in);
                    this.printlnObjectId("Initial thread object id:", threadId);
                    break;
                }
                case 1: 
                case 2: 
                case 40: 
                case 41: {
                    long threadId = this.readObjectID(in);
                    this.printlnObjectId("Thread object id:", threadId);
                    this.readAndPrintLocation(in);
                    break;
                }
                case 4: {
                    long threadId = this.readObjectID(in);
                    this.readAndPrintLocation(in);
                    byte signatureByte = in.readByte();
                    long objectId = this.readObjectID(in);
                    this.printlnTaggedObjectId("Exception object id:", objectId, signatureByte);
                    this.readAndPrintLocation(in);
                    break;
                }
                case 6: 
                case 7: {
                    long threadId = this.readObjectID(in);
                    this.printlnObjectId("Thread object id:", threadId);
                    break;
                }
                case 8: {
                    long threadId = this.readObjectID(in);
                    byte refTypeTag = in.readByte();
                    long typeId = this.readReferenceTypeID(in);
                    String typeSignature = VerbosePacketStream.readString(in);
                    int status = in.readInt();
                    this.printlnObjectId("Thread object id:", threadId);
                    this.printRefTypeTag(refTypeTag);
                    this.printlnReferenceTypeId("Type id:", typeId);
                    this.println("Type signature:", typeSignature);
                    this.println("Status:", status);
                    break;
                }
                case 9: {
                    String typeSignature = VerbosePacketStream.readString(in);
                    this.println("Type signature:", typeSignature);
                    break;
                }
                case 20: {
                    long threadId = this.readObjectID(in);
                    this.printlnObjectId("Thread object id:", threadId);
                    this.readAndPrintLocation(in);
                    byte refTypeTag = in.readByte();
                    long typeId = this.readReferenceTypeID(in);
                    long fieldId = this.readFieldID(in);
                    byte signatureByte = in.readByte();
                    long objectId = this.readObjectID(in);
                    this.printRefTypeTag(refTypeTag);
                    this.printlnReferenceTypeId("Type id:", typeId);
                    this.printlnFieldId("Field id:", fieldId);
                    this.printlnTaggedObjectId("Object id:", objectId, signatureByte);
                    break;
                }
                case 21: {
                    long threadId = this.readObjectID(in);
                    this.printlnObjectId("Thread object id:", threadId);
                    this.readAndPrintLocation(in);
                    byte refTypeTag = in.readByte();
                    long typeId = this.readReferenceTypeID(in);
                    long fieldId = this.readFieldID(in);
                    byte signatureByte = in.readByte();
                    long objectId = this.readObjectID(in);
                    this.printRefTypeTag(refTypeTag);
                    this.printlnReferenceTypeId("Type id:", typeId);
                    this.printlnFieldId("Field id:", fieldId);
                    this.printlnTaggedObjectId("Object id:", objectId, signatureByte);
                    this.readAndPrintlnTaggedValue("Value:", in);
                    break;
                }
            }
            ++i;
        }
    }

    private static String readString(DataInputStream in) throws IOException {
        int utfSize = in.readInt();
        byte[] utfBytes = new byte[utfSize];
        in.readFully(utfBytes);
        StringBuffer strBuffer = new StringBuffer(utfSize / 3 * 2);
        int i = 0;
        while (i < utfSize) {
            int a = utfBytes[i] & 0xFF;
            if (a >> 4 < 12) {
                strBuffer.append((char)a);
                ++i;
                continue;
            }
            int b = utfBytes[i + 1] & 0xFF;
            if (a >> 4 < 14) {
                if ((b & 0xBF) == 0) {
                    throw new UTFDataFormatException("Second byte input does not match UTF Specification");
                }
                strBuffer.append((char)((a & 0x1F) << 6 | b & 0x3F));
                i += 2;
                continue;
            }
            int c = utfBytes[i + 2] & 0xFF;
            if ((a & 0xEF) > 0) {
                if ((b & 0xBF) == 0 || (c & 0xBF) == 0) {
                    throw new UTFDataFormatException("Second or third byte input does not mach UTF Specification_");
                }
                strBuffer.append((char)((a & 0xF) << 12 | (b & 0x3F) << 6 | c & 0x3F));
                i += 3;
                continue;
            }
            throw new UTFDataFormatException("Input does not match UTF Specification");
        }
        return strBuffer.toString();
    }

    private byte[] remainderData(DataInputStream in) throws IOException {
        int length;
        byte[] buffer = new byte[100];
        byte[] res = new byte[]{};
        int resLength = 0;
        while ((length = in.read(buffer)) != -1) {
            byte[] newRes = new byte[resLength + length];
            System.arraycopy(res, 0, newRes, 0, resLength);
            System.arraycopy(buffer, 0, newRes, resLength, length);
            res = newRes;
            resLength += length;
        }
        return res;
    }

    private long readObjectID(DataInputStream in) throws IOException, UnableToParseDataException {
        if (!TcpipSpy.hasSizes()) {
            throw new UnableToParseDataException("Unable to parse remaining data", this.remainderData(in));
        }
        return this.readID(in, TcpipSpy.getObjectIDSize());
    }

    private long readReferenceTypeID(DataInputStream in) throws IOException, UnableToParseDataException {
        if (!TcpipSpy.hasSizes()) {
            throw new UnableToParseDataException("Unable to parse remaining data", this.remainderData(in));
        }
        return this.readID(in, TcpipSpy.getReferenceTypeIDSize());
    }

    private long readFieldID(DataInputStream in) throws IOException, UnableToParseDataException {
        if (!TcpipSpy.hasSizes()) {
            throw new UnableToParseDataException("Unable to parse remaining data", this.remainderData(in));
        }
        return this.readID(in, TcpipSpy.getFieldIDSize());
    }

    private long readMethodID(DataInputStream in) throws IOException, UnableToParseDataException {
        if (!TcpipSpy.hasSizes()) {
            throw new UnableToParseDataException("Unable to parse remaining data", this.remainderData(in));
        }
        return this.readID(in, TcpipSpy.getMethodIDSize());
    }

    private long readFrameID(DataInputStream in) throws IOException, UnableToParseDataException {
        if (!TcpipSpy.hasSizes()) {
            throw new UnableToParseDataException("Unable to parse remaining data", this.remainderData(in));
        }
        return this.readID(in, TcpipSpy.getFrameIDSize());
    }

    private long readID(DataInputStream in, int size) throws IOException {
        long id = 0L;
        int i = 0;
        while (i < size) {
            int b = in.readUnsignedByte();
            id = id << 8 | (long)b;
            ++i;
        }
        return id;
    }

    private void readAndPrintlnTaggedValue(String description, DataInputStream in) throws IOException, UnableToParseDataException {
        byte tag = in.readByte();
        this.readAndPrintlnUntaggedValue(description, in, tag, true);
    }

    private void readAndPrintlnUntaggedValue(String description, DataInputStream in, byte tag, boolean printTagValue) throws IOException, UnableToParseDataException {
        int size;
        this.printDescription(description);
        boolean isId = false;
        switch (tag) {
            case 86: {
                this.printSignatureByte(tag, printTagValue);
                this.println();
                return;
            }
            case 90: {
                if (printTagValue) {
                    this.printSignatureByte(tag, true);
                    this.print(' ');
                    this.println(in.readBoolean());
                } else {
                    this.println(in.readBoolean());
                    this.print(' ');
                    this.printSignatureByte(tag, false);
                }
                return;
            }
            case 66: {
                size = 1;
                break;
            }
            case 67: 
            case 83: {
                size = 2;
                break;
            }
            case 70: 
            case 73: {
                size = 4;
                break;
            }
            case 68: 
            case 74: {
                size = 8;
                break;
            }
            case 76: 
            case 91: 
            case 99: 
            case 103: 
            case 108: 
            case 115: 
            case 116: {
                if (!TcpipSpy.hasSizes()) {
                    throw new UnableToParseDataException("Unable to parse remaining data", this.remainderData(in));
                }
                size = TcpipSpy.getObjectIDSize();
                isId = true;
                break;
            }
            default: {
                size = 0;
            }
        }
        long value = this.readID(in, size);
        if (printTagValue) {
            this.printSignatureByte(tag, true);
            this.print(' ');
        }
        this.printHex(value, size);
        if (isId) {
            this.printParanthetical(value);
        } else {
            switch (tag) {
                case 66: {
                    this.printParanthetical((byte)value);
                    break;
                }
                case 67: {
                    this.printParanthetical((char)value);
                    break;
                }
                case 83: {
                    this.printParanthetical((short)value);
                    break;
                }
                case 73: {
                    this.printParanthetical((int)value);
                    break;
                }
                case 70: {
                    this.printParanthetical(Float.intBitsToFloat((int)value));
                    break;
                }
                case 68: {
                    this.printParanthetical(Double.longBitsToDouble(value));
                    break;
                }
                case 74: {
                    this.printParanthetical(value);
                }
            }
        }
        if (!printTagValue) {
            this.print(' ');
            this.printSignatureByte(tag, false);
        }
        this.println();
    }

    private void printSignatureByte(byte signatureByte, boolean printValue) {
        String type;
        switch (signatureByte) {
            case 86: {
                type = "void";
                break;
            }
            case 90: {
                type = "boolean";
                break;
            }
            case 66: {
                type = "byte";
                break;
            }
            case 67: {
                type = "char";
                break;
            }
            case 83: {
                type = "short";
                break;
            }
            case 73: {
                type = "int";
                break;
            }
            case 70: {
                type = "float";
                break;
            }
            case 68: {
                type = "double";
                break;
            }
            case 74: {
                type = "long";
                break;
            }
            case 91: {
                type = "array id";
                break;
            }
            case 76: {
                type = "object id";
                break;
            }
            case 115: {
                type = "string id";
                break;
            }
            case 116: {
                type = "thread id";
                break;
            }
            case 103: {
                type = "thread group id";
                break;
            }
            case 108: {
                type = "class loader id";
                break;
            }
            case 99: {
                type = "class object id";
                break;
            }
            default: {
                type = "unknown";
            }
        }
        if (printValue) {
            this.printHex(signatureByte);
            this.print(" (");
            this.print(signatureByte);
            this.print(" - ");
        } else {
            this.print(" (");
        }
        this.print(String.valueOf(type) + ')');
    }

    private void readAndPrintLocation(DataInputStream in) throws IOException, UnableToParseDataException {
        byte typeTag = in.readByte();
        long classId = this.readReferenceTypeID(in);
        long methodId = this.readMethodID(in);
        long index = in.readLong();
        this.printlnReferenceTypeIdWithTypeTag("Location: class id:", classId, typeTag);
        this.printlnMethodId("          method id:", methodId);
        this.println("          index:", index);
    }

    private void readAndPrintArrayRegion(DataInputStream in) throws IOException, UnableToParseDataException {
        byte signatureByte = in.readByte();
        int valuesCount = in.readInt();
        this.printDescription("Signature byte:");
        this.printSignatureByte(signatureByte, true);
        this.println();
        this.println("Values count:", valuesCount);
        switch (signatureByte) {
            case 76: 
            case 91: 
            case 99: 
            case 103: 
            case 108: 
            case 115: 
            case 116: {
                int i = 0;
                while (i < valuesCount) {
                    this.readAndPrintlnTaggedValue("Value", in);
                    ++i;
                }
                break;
            }
            default: {
                int i = 0;
                while (i < valuesCount) {
                    this.readAndPrintlnUntaggedValue("Value", in, signatureByte, false);
                    ++i;
                }
                break block0;
            }
        }
    }

    protected void println(String description, int value) {
        this.printDescription(description);
        this.printHex(value);
        this.printParanthetical(value);
        this.println();
    }

    protected void println(String description, long value) {
        this.printDescription(description);
        this.printHex(value);
        this.printParanthetical(value);
        this.println();
    }

    protected void println(String description, String value) {
        this.printDescription(description);
        this.print('\"');
        StringBuffer val = new StringBuffer();
        int pos = 0;
        int lastPos = 0;
        while ((pos = value.indexOf(10, lastPos)) != -1) {
            val.append(value.substring(lastPos, ++pos));
            val.append(shift);
            lastPos = pos;
        }
        val.append(value.substring(lastPos, value.length()));
        this.print(val);
        this.println('\"');
    }

    protected void println(String description, boolean value) {
        this.printDescription(description);
        this.println(value);
    }

    protected void printlnReferenceTypeId(String description, long value) {
        this.println(description, value, TcpipSpy.getReferenceTypeIDSize());
    }

    protected void printlnReferenceTypeIdWithTypeTag(String description, long value, byte typeTag) {
        this.printDescription(description);
        this.printRefTypeTagValue(typeTag);
        this.print(" - ");
        this.printHex(value, TcpipSpy.getReferenceTypeIDSize());
        this.printParanthetical(value);
        this.println();
    }

    protected void printlnObjectId(String description, long value) {
        this.printDescription(description);
        this.printHex(value, TcpipSpy.getObjectIDSize());
        if (value == 0L) {
            this.println(" (NULL)");
        } else {
            this.printParanthetical(value);
            this.println();
        }
    }

    protected void printlnTaggedObjectId(String description, long value, byte signatureByte) {
        this.printDescription(description);
        this.printSignatureByte(signatureByte, true);
        this.print(' ');
        this.printHex(value, TcpipSpy.getReferenceTypeIDSize());
        if (value == 0L) {
            this.println(" (NULL)");
        } else {
            this.printParanthetical(value);
            this.println();
        }
    }

    protected void printlnFieldId(String description, long value) {
        this.println(description, value, TcpipSpy.getFieldIDSize());
    }

    protected void printlnMethodId(String description, long value) {
        this.println(description, value, TcpipSpy.getMethodIDSize());
    }

    protected void printlnFrameId(String description, long value) {
        this.println(description, value, TcpipSpy.getFrameIDSize());
    }

    protected void println(String description, long value, int size) {
        this.printDescription(description);
        this.printHex(value, size);
        this.printParanthetical(value);
        this.println();
    }

    protected void printDescription(String description) {
        int width = 38 - description.length();
        this.print(description);
        this.write(padding, 0, width);
    }

    protected void printHexString(String hex, int width) {
        this.print("0x");
        this.write(zeros, 0, width -= hex.length());
        this.print(hex);
    }

    protected void printHex(long l, int byteNumber) {
        this.printHexString(Long.toHexString(l).toUpperCase(), byteNumber * 2);
    }

    protected void printHex(byte b) {
        this.printHexString(Integer.toHexString(b & 0xFF).toUpperCase(), 2);
    }

    protected void printHex(int i) {
        this.printHexString(Integer.toHexString(i).toUpperCase(), 8);
    }

    protected void printHex(long l) {
        this.printHexString(Long.toHexString(l).toUpperCase(), 16);
    }

    protected void printHex(byte[] b) {
        if (b == null) {
            this.println("NULL");
            return;
        }
        int i = 0;
        int length = b.length;
        while (i < length) {
            String hexa = Integer.toHexString(b[i]).toUpperCase();
            if (hexa.length() == 1) {
                this.print('0');
            }
            this.print(hexa);
            if (i % 32 == 0 && i != 0) {
                this.println();
                this.print(shift);
            } else {
                this.print(' ');
            }
            ++i;
        }
        this.println();
    }

    protected void printParanthetical(byte i) {
        this.print(" (");
        this.print(i);
        this.print(')');
    }

    protected void printParanthetical(char i) {
        this.print(" (");
        this.print(i);
        this.print(')');
    }

    protected void printParanthetical(short i) {
        this.print(" (");
        this.print(i);
        this.print(')');
    }

    protected void printParanthetical(int i) {
        this.print(" (");
        this.print(i);
        this.print(')');
    }

    protected void printParanthetical(long l) {
        this.print(" (");
        this.print(l);
        this.print(')');
    }

    protected void printParanthetical(float f) {
        this.print(" (");
        this.print(f);
        this.print(')');
    }

    protected void printParanthetical(double d) {
        this.print(" (");
        this.print(d);
        this.print(')');
    }

    protected void printParanthetical(String s) {
        this.print(" (");
        this.print(s);
        this.print(')');
    }
}

