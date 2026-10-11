/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.jdwp.JdwpPacket;

public class JdwpCommandPacket
extends JdwpPacket {
    public static final int CSET_VIRTUAL_MACHINE = 1;
    public static final int CSET_REFERENCE_TYPE = 2;
    public static final int CSET_CLASS_TYPE = 3;
    public static final int CSET_ARRAY_TYPE = 4;
    public static final int CSET_INTERFACE_TYPE = 5;
    public static final int CSET_METHOD = 6;
    public static final int CSET_FIELD = 8;
    public static final int CSET_OBJECT_REFERENCE = 9;
    public static final int CSET_STRING_REFERENCE = 10;
    public static final int CSET_THREAD_REFERENCE = 11;
    public static final int CSET_THREAD_GROUP_REFERENCE = 12;
    public static final int CSET_ARRAY_REFERENCE = 13;
    public static final int CSET_CLASS_LOADER_REFERENCE = 14;
    public static final int CSET_EVENT_REQUEST = 15;
    public static final int CSET_STACK_FRAME = 16;
    public static final int CSET_CLASS_OBJECT_REFERENCE = 17;
    public static final int CSET_EVENT = 64;
    public static final int CSET_HOT_CODE_REPLACEMENT = 128;
    public static final int VM_VERSION = 257;
    public static final int VM_CLASSES_BY_SIGNATURE = 258;
    public static final int VM_ALL_CLASSES = 259;
    public static final int VM_ALL_THREADS = 260;
    public static final int VM_TOP_LEVEL_THREAD_GROUPS = 261;
    public static final int VM_DISPOSE = 262;
    public static final int VM_ID_SIZES = 263;
    public static final int VM_SUSPEND = 264;
    public static final int VM_RESUME = 265;
    public static final int VM_EXIT = 266;
    public static final int VM_CREATE_STRING = 267;
    public static final int VM_CAPABILITIES = 268;
    public static final int VM_CLASS_PATHS = 269;
    public static final int VM_DISPOSE_OBJECTS = 270;
    public static final int VM_HOLD_EVENTS = 271;
    public static final int VM_RELEASE_EVENTS = 272;
    public static final int VM_CAPABILITIES_NEW = 273;
    public static final int VM_REDEFINE_CLASSES = 274;
    public static final int VM_SET_DEFAULT_STRATUM = 275;
    public static final int VM_ALL_CLASSES_WITH_GENERIC = 276;
    public static final int VM_INSTANCE_COUNTS = 277;
    public static final int RT_SIGNATURE = 513;
    public static final int RT_CLASS_LOADER = 514;
    public static final int RT_MODIFIERS = 515;
    public static final int RT_FIELDS = 516;
    public static final int RT_METHODS = 517;
    public static final int RT_GET_VALUES = 518;
    public static final int RT_SOURCE_FILE = 519;
    public static final int RT_NESTED_TYPES = 520;
    public static final int RT_STATUS = 521;
    public static final int RT_INTERFACES = 522;
    public static final int RT_CLASS_OBJECT = 523;
    public static final int RT_SOURCE_DEBUG_EXTENSION = 524;
    public static final int RT_SIGNATURE_WITH_GENERIC = 525;
    public static final int RT_FIELDS_WITH_GENERIC = 526;
    public static final int RT_METHODS_WITH_GENERIC = 527;
    public static final int RT_INSTANCES = 528;
    public static final int RT_CLASS_VERSION = 529;
    public static final int RT_CONSTANT_POOL = 530;
    public static final int CT_SUPERCLASS = 769;
    public static final int CT_SET_VALUES = 770;
    public static final int CT_INVOKE_METHOD = 771;
    public static final int CT_NEW_INSTANCE = 772;
    public static final int AT_NEW_INSTANCE = 1025;
    public static final int M_LINE_TABLE = 1537;
    public static final int M_VARIABLE_TABLE = 1538;
    public static final int M_BYTECODES = 1539;
    public static final int M_OBSOLETE = 1540;
    public static final int M_VARIABLE_TABLE_WITH_GENERIC = 1541;
    public static final int OR_REFERENCE_TYPE = 2305;
    public static final int OR_GET_VALUES = 2306;
    public static final int OR_SET_VALUES = 2307;
    public static final int OR_MONITOR_INFO = 2309;
    public static final int OR_INVOKE_METHOD = 2310;
    public static final int OR_DISABLE_COLLECTION = 2311;
    public static final int OR_ENABLE_COLLECTION = 2312;
    public static final int OR_IS_COLLECTED = 2313;
    public static final int OR_REFERRING_OBJECTS = 2314;
    public static final int SR_VALUE = 2561;
    public static final int TR_NAME = 2817;
    public static final int TR_SUSPEND = 2818;
    public static final int TR_RESUME = 2819;
    public static final int TR_STATUS = 2820;
    public static final int TR_THREAD_GROUP = 2821;
    public static final int TR_FRAMES = 2822;
    public static final int TR_FRAME_COUNT = 2823;
    public static final int TR_OWNED_MONITORS = 2824;
    public static final int TR_CURRENT_CONTENDED_MONITOR = 2825;
    public static final int TR_STOP = 2826;
    public static final int TR_INTERRUPT = 2827;
    public static final int TR_SUSPEND_COUNT = 2828;
    public static final int TR_OWNED_MONITOR_STACK_DEPTH = 2829;
    public static final int TR_FORCE_EARLY_RETURN = 2830;
    public static final int TGR_NAME = 3073;
    public static final int TGR_PARENT = 3074;
    public static final int TGR_CHILDREN = 3075;
    public static final int AR_LENGTH = 3329;
    public static final int AR_GET_VALUES = 3330;
    public static final int AR_SET_VALUES = 3331;
    public static final int CLR_VISIBLE_CLASSES = 3585;
    public static final int ER_SET = 3841;
    public static final int ER_CLEAR = 3842;
    public static final int ER_CLEAR_ALL_BREAKPOINTS = 3843;
    public static final int SF_GET_VALUES = 4097;
    public static final int SF_SET_VALUES = 4098;
    public static final int SF_THIS_OBJECT = 4099;
    public static final int SF_POP_FRAME = 4100;
    public static final int COR_REFLECTED_TYPE = 4353;
    public static final int E_COMPOSITE = 16484;
    public static final int HCR_CLASSES_HAVE_CHANGED = 32769;
    public static final int HCR_GET_CLASS_VERSION = 32770;
    public static final int HCR_DO_RETURN = 32771;
    public static final int HCR_REENTER_ON_EXIT = 32772;
    public static final int HCR_CAPABILITIES = 32773;
    private static Map fgCommandMap = null;
    private static int fgNextId = 1;
    private int fCommand;
    static /* synthetic */ Class class$0;

    protected JdwpCommandPacket() {
    }

    public JdwpCommandPacket(int command) {
        this.setCommand(command);
        this.setId(JdwpCommandPacket.getNewId());
    }

    public static synchronized int getNewId() {
        return fgNextId++;
    }

    public byte getCommandSet() {
        return (byte)(this.fCommand >>> 8);
    }

    public int getCommand() {
        return this.fCommand;
    }

    public void setCommand(int command) {
        this.fCommand = command;
    }

    protected int readSpecificHeaderFields(byte[] bytes, int index) {
        byte commandSet = bytes[index];
        this.fCommand = bytes[index + 1] + (commandSet << 8);
        return 2;
    }

    protected int writeSpecificHeaderFields(byte[] bytes, int index) throws IOException {
        bytes[index] = this.getCommandSet();
        bytes[index + 1] = (byte)this.fCommand;
        return 2;
    }

    public static void getConstantMaps() {
        String name;
        Field field;
        if (fgCommandMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.jdwp.JdwpCommandPacket");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        HashMap<Integer, String> setNames = new HashMap<Integer, String>(fields.length);
        int i = 0;
        while (i < fields.length) {
            field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    name = field.getName();
                    if (name.startsWith("CSET_")) {
                        int value = field.getInt(null);
                        setNames.put(new Integer(value), JdwpCommandPacket.removePrefix(name));
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
        fgCommandMap = new HashMap();
        i = 0;
        while (i < fields.length) {
            field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    name = field.getName();
                    if (!name.startsWith("CSET_")) {
                        Integer val = (Integer)field.get(null);
                        int value = val;
                        int set = value >>> 8;
                        String setName = (String)setNames.get(new Integer(set));
                        String entryName = String.valueOf(setName) + " - " + JdwpCommandPacket.removePrefix(name);
                        fgCommandMap.put(val, entryName);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {}
            }
            ++i;
        }
    }

    public static Map commandMap() {
        JdwpCommandPacket.getConstantMaps();
        return fgCommandMap;
    }

    public static String removePrefix(String str) {
        int i = str.indexOf(95);
        if (i < 0) {
            return str;
        }
        return str.substring(i + 1);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append('[');
        buffer.append(this.getId());
        buffer.append("] ");
        switch (this.getCommand()) {
            case 257: {
                buffer.append("VM_VERSION");
                break;
            }
            case 258: {
                buffer.append("VM_CLASSES_BY_SIGNATURE");
                break;
            }
            case 259: {
                buffer.append("VM_ALL_CLASSES");
                break;
            }
            case 260: {
                buffer.append("VM_ALL_THREADS");
                break;
            }
            case 261: {
                buffer.append("VM_TOP_LEVEL_THREAD_GROUPS");
                break;
            }
            case 262: {
                buffer.append("VM_DISPOSE");
                break;
            }
            case 263: {
                buffer.append("VM_ID_SIZES");
                break;
            }
            case 264: {
                buffer.append("VM_SUSPEND");
                break;
            }
            case 265: {
                buffer.append("VM_RESUME");
                break;
            }
            case 266: {
                buffer.append("VM_EXIT");
                break;
            }
            case 267: {
                buffer.append("VM_CREATE_STRING");
                break;
            }
            case 268: {
                buffer.append("VM_CAPABILITIES");
                break;
            }
            case 269: {
                buffer.append("VM_CLASS_PATHS");
                break;
            }
            case 270: {
                buffer.append("VM_DISPOSE_OBJECTS");
                break;
            }
            case 271: {
                buffer.append("VM_HOLD_EVENTS");
                break;
            }
            case 272: {
                buffer.append("VM_RELEASE_EVENTS");
                break;
            }
            case 273: {
                buffer.append("VM_CAPABILITIES_NEW");
                break;
            }
            case 274: {
                buffer.append("VM_REDEFINE_CLASSES");
                break;
            }
            case 275: {
                buffer.append("VM_SET_DEFAULT_STRATUM");
                break;
            }
            case 276: {
                buffer.append("VM_ALL_CLASSES_WITH_GENERIC");
                break;
            }
            case 513: {
                buffer.append("RT_SIGNATURE");
                break;
            }
            case 514: {
                buffer.append("RT_CLASS_LOADER");
                break;
            }
            case 515: {
                buffer.append("RT_MODIFIERS");
                break;
            }
            case 516: {
                buffer.append("RT_FIELDS");
                break;
            }
            case 517: {
                buffer.append("RT_METHODS");
                break;
            }
            case 518: {
                buffer.append("RT_GET_VALUES");
                break;
            }
            case 519: {
                buffer.append("RT_SOURCE_FILE");
                break;
            }
            case 520: {
                buffer.append("RT_NESTED_TYPES");
                break;
            }
            case 521: {
                buffer.append("RT_STATUS");
                break;
            }
            case 522: {
                buffer.append("RT_INTERFACES");
                break;
            }
            case 523: {
                buffer.append("RT_CLASS_OBJECT");
                break;
            }
            case 524: {
                buffer.append("RT_SOURCE_DEBUG_EXTENSION");
                break;
            }
            case 525: {
                buffer.append("RT_SIGNATURE_WITH_GENERIC");
                break;
            }
            case 526: {
                buffer.append("RT_FIELDS_WITH_GENERIC");
                break;
            }
            case 527: {
                buffer.append("RT_METHODS_WITH_GENERIC");
                break;
            }
            case 769: {
                buffer.append("CT_SUPERCLASS");
                break;
            }
            case 770: {
                buffer.append("CT_SET_VALUES");
                break;
            }
            case 771: {
                buffer.append("CT_INVOKE_METHOD");
                break;
            }
            case 772: {
                buffer.append("CT_NEW_INSTANCE");
                break;
            }
            case 1025: {
                buffer.append("AT_NEW_INSTANCE");
                break;
            }
            case 1537: {
                buffer.append("M_LINE_TABLE");
                break;
            }
            case 1538: {
                buffer.append("M_VARIABLE_TABLE");
                break;
            }
            case 1539: {
                buffer.append("M_BYTECODES");
                break;
            }
            case 1540: {
                buffer.append("M_OBSOLETE");
                break;
            }
            case 1541: {
                buffer.append("M_VARIABLE_TABLE_WITH_GENERIC");
                break;
            }
            case 2305: {
                buffer.append("OR_REFERENCE_TYPE");
                break;
            }
            case 2306: {
                buffer.append("OR_GET_VALUES");
                break;
            }
            case 2307: {
                buffer.append("OR_SET_VALUES");
                break;
            }
            case 2309: {
                buffer.append("OR_MONITOR_INFO");
                break;
            }
            case 2310: {
                buffer.append("OR_INVOKE_METHOD");
                break;
            }
            case 2311: {
                buffer.append("OR_DISABLE_COLLECTION");
                break;
            }
            case 2312: {
                buffer.append("OR_ENABLE_COLLECTION");
                break;
            }
            case 2313: {
                buffer.append("OR_IS_COLLECTED");
                break;
            }
            case 2561: {
                buffer.append("SR_VALUE");
                break;
            }
            case 2817: {
                buffer.append("TR_NAME");
                break;
            }
            case 2818: {
                buffer.append("TR_SUSPEND");
                break;
            }
            case 2819: {
                buffer.append("TR_RESUME");
                break;
            }
            case 2820: {
                buffer.append("TR_STATUS");
                break;
            }
            case 2821: {
                buffer.append("TR_THREAD_GROUP");
                break;
            }
            case 2822: {
                buffer.append("TR_FRAMES");
                break;
            }
            case 2823: {
                buffer.append("TR_FRAME_COUNT");
                break;
            }
            case 2824: {
                buffer.append("TR_OWNED_MONITORS");
                break;
            }
            case 2825: {
                buffer.append("TR_CURRENT_CONTENDED_MONITOR");
                break;
            }
            case 2826: {
                buffer.append("TR_STOP");
                break;
            }
            case 2827: {
                buffer.append("TR_INTERRUPT");
                break;
            }
            case 2828: {
                buffer.append("TR_SUSPEND_COUNT");
                break;
            }
            case 3073: {
                buffer.append("TGR_NAME");
                break;
            }
            case 3074: {
                buffer.append("TGR_PARENT");
                break;
            }
            case 3075: {
                buffer.append("TGR_CHILDREN");
                break;
            }
            case 3329: {
                buffer.append("AR_LENGTH");
                break;
            }
            case 3330: {
                buffer.append("AR_GET_VALUES");
                break;
            }
            case 3331: {
                buffer.append("AR_SET_VALUES");
                break;
            }
            case 3585: {
                buffer.append("CLR_VISIBLE_CLASSES");
                break;
            }
            case 3841: {
                buffer.append("ER_SET");
                break;
            }
            case 3842: {
                buffer.append("ER_CLEAR");
                break;
            }
            case 3843: {
                buffer.append("ER_CLEAR_ALL_BREAKPOINTS");
                break;
            }
            case 4097: {
                buffer.append("SF_GET_VALUES");
                break;
            }
            case 4098: {
                buffer.append("SF_SET_VALUES");
                break;
            }
            case 4099: {
                buffer.append("SF_THIS_OBJECT");
                break;
            }
            case 4100: {
                buffer.append("SF_POP_FRAME");
                break;
            }
            case 4353: {
                buffer.append("COR_REFLECTED_TYPE");
                break;
            }
            case 16484: {
                buffer.append("E_COMPOSITE");
                break;
            }
            default: {
                buffer.append("UNKNOWN COMMAND: ");
                buffer.append(this.getCommand());
            }
        }
        return buffer.toString();
    }
}

