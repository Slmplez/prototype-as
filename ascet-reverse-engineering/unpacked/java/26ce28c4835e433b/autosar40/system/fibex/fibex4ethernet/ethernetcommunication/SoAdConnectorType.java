/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SoAdConnectorType implements Enumerator
{
    PDU_R(0, "PduR", "PDU-R"),
    DO_IP(1, "DoIp", "DO-IP"),
    XCP(2, "Xcp", "XCP"),
    UDP_NM(3, "UdpNm", "UDP-NM");

    public static final int PDU_R_VALUE = 0;
    public static final int DO_IP_VALUE = 1;
    public static final int XCP_VALUE = 2;
    public static final int UDP_NM_VALUE = 3;
    private static final SoAdConnectorType[] VALUES_ARRAY;
    public static final List<SoAdConnectorType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SoAdConnectorType[]{PDU_R, DO_IP, XCP, UDP_NM};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SoAdConnectorType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SoAdConnectorType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SoAdConnectorType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SoAdConnectorType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SoAdConnectorType get(int value) {
        switch (value) {
            case 0: {
                return PDU_R;
            }
            case 1: {
                return DO_IP;
            }
            case 2: {
                return XCP;
            }
            case 3: {
                return UDP_NM;
            }
        }
        return null;
    }

    private SoAdConnectorType(int value, String name, String literal) {
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

