/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentMain;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum ComponentTypeType implements Enumerator
{
    ASCET_CLASS(0, "ASCETClass", "ASCET_Class"),
    ASCET_MODULE(1, "ASCETModule", "ASCET_Module"),
    ASCETCT_CLASS(2, "ASCETCTClass", "ASCET_CTClass"),
    ASCET_PROJECT(3, "ASCETProject", "ASCET_Project"),
    ASCET_DEFAULT_PROJECT(4, "ASCETDefaultProject", "ASCET_DefaultProject"),
    ASCET_PROTOCOL(5, "ASCETProtocol", "ASCET_Protocol"),
    ASCET_INTERFACE(6, "ASCETInterface", "ASCET_Interface"),
    ASCET_RECORD(7, "ASCETRecord", "ASCET_Record"),
    ASCET_CONTAINER(8, "ASCETContainer", "ASCET_Container"),
    ASCET_ENUMERATION(9, "ASCETEnumeration", "ASCET_Enumeration"),
    ASCET_IMAGE(10, "ASCETImage", "ASCET_Image"),
    ASCET_SIGNAL(11, "ASCETSignal", "ASCET_Signal"),
    ASCET_ASAP2_ITEM(12, "ASCETAsap2Item", "ASCET_Asap2Item"),
    ASCET_FOLDER(13, "ASCETFolder", "ASCET_Folder"),
    ASCET_GENERIC_COMPONENT(14, "ASCETGenericComponent", "ASCET_GenericComponent"),
    AUTOSAR_MODE_GROUP(15, "AUTOSARModeGroup", "AUTOSAR_ModeGroup"),
    AUTOSAR_CLIENT_SERVER_INTERFACE(16, "AUTOSARClientServerInterface", "AUTOSAR_ClientServerInterface"),
    AUTOSAR_CALIBRATION_INTERFACE(17, "AUTOSARCalibrationInterface", "AUTOSAR_CalibrationInterface"),
    AUTOSAR_SENDER_RECEIVER_INTERFACE(18, "AUTOSARSenderReceiverInterface", "AUTOSAR_SenderReceiverInterface"),
    AUTOSAR_ATOMIC_SOFTWARE_COMPONENT(19, "AUTOSARAtomicSoftwareComponent", "AUTOSAR_AtomicSoftwareComponent"),
    AUTOSARNV_DATA_INTERFACE(20, "AUTOSARNVDataInterface", "AUTOSAR_NVDataInterface");

    public static final int ASCET_CLASS_VALUE = 0;
    public static final int ASCET_MODULE_VALUE = 1;
    public static final int ASCETCT_CLASS_VALUE = 2;
    public static final int ASCET_PROJECT_VALUE = 3;
    public static final int ASCET_DEFAULT_PROJECT_VALUE = 4;
    public static final int ASCET_PROTOCOL_VALUE = 5;
    public static final int ASCET_INTERFACE_VALUE = 6;
    public static final int ASCET_RECORD_VALUE = 7;
    public static final int ASCET_CONTAINER_VALUE = 8;
    public static final int ASCET_ENUMERATION_VALUE = 9;
    public static final int ASCET_IMAGE_VALUE = 10;
    public static final int ASCET_SIGNAL_VALUE = 11;
    public static final int ASCET_ASAP2_ITEM_VALUE = 12;
    public static final int ASCET_FOLDER_VALUE = 13;
    public static final int ASCET_GENERIC_COMPONENT_VALUE = 14;
    public static final int AUTOSAR_MODE_GROUP_VALUE = 15;
    public static final int AUTOSAR_CLIENT_SERVER_INTERFACE_VALUE = 16;
    public static final int AUTOSAR_CALIBRATION_INTERFACE_VALUE = 17;
    public static final int AUTOSAR_SENDER_RECEIVER_INTERFACE_VALUE = 18;
    public static final int AUTOSAR_ATOMIC_SOFTWARE_COMPONENT_VALUE = 19;
    public static final int AUTOSARNV_DATA_INTERFACE_VALUE = 20;
    private static final ComponentTypeType[] VALUES_ARRAY;
    public static final List<ComponentTypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ComponentTypeType[]{ASCET_CLASS, ASCET_MODULE, ASCETCT_CLASS, ASCET_PROJECT, ASCET_DEFAULT_PROJECT, ASCET_PROTOCOL, ASCET_INTERFACE, ASCET_RECORD, ASCET_CONTAINER, ASCET_ENUMERATION, ASCET_IMAGE, ASCET_SIGNAL, ASCET_ASAP2_ITEM, ASCET_FOLDER, ASCET_GENERIC_COMPONENT, AUTOSAR_MODE_GROUP, AUTOSAR_CLIENT_SERVER_INTERFACE, AUTOSAR_CALIBRATION_INTERFACE, AUTOSAR_SENDER_RECEIVER_INTERFACE, AUTOSAR_ATOMIC_SOFTWARE_COMPONENT, AUTOSARNV_DATA_INTERFACE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ComponentTypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ComponentTypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ComponentTypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ComponentTypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ComponentTypeType get(int value) {
        switch (value) {
            case 0: {
                return ASCET_CLASS;
            }
            case 1: {
                return ASCET_MODULE;
            }
            case 2: {
                return ASCETCT_CLASS;
            }
            case 3: {
                return ASCET_PROJECT;
            }
            case 4: {
                return ASCET_DEFAULT_PROJECT;
            }
            case 5: {
                return ASCET_PROTOCOL;
            }
            case 6: {
                return ASCET_INTERFACE;
            }
            case 7: {
                return ASCET_RECORD;
            }
            case 8: {
                return ASCET_CONTAINER;
            }
            case 9: {
                return ASCET_ENUMERATION;
            }
            case 10: {
                return ASCET_IMAGE;
            }
            case 11: {
                return ASCET_SIGNAL;
            }
            case 12: {
                return ASCET_ASAP2_ITEM;
            }
            case 13: {
                return ASCET_FOLDER;
            }
            case 14: {
                return ASCET_GENERIC_COMPONENT;
            }
            case 15: {
                return AUTOSAR_MODE_GROUP;
            }
            case 16: {
                return AUTOSAR_CLIENT_SERVER_INTERFACE;
            }
            case 17: {
                return AUTOSAR_CALIBRATION_INTERFACE;
            }
            case 18: {
                return AUTOSAR_SENDER_RECEIVER_INTERFACE;
            }
            case 19: {
                return AUTOSAR_ATOMIC_SOFTWARE_COMPONENT;
            }
            case 20: {
                return AUTOSARNV_DATA_INTERFACE;
            }
        }
        return null;
    }

    private ComponentTypeType(int value, String name, String literal) {
        this.value = value;
        this.name = name;
        this.literal = literal;
    }

    public int getValue() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String getLiteral() {
        return this.literal;
    }

    public String toString() {
        return this.literal;
    }
}

