/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.GregorianCalendar;
import java.util.Random;
import org.eclipse.core.runtime.Assert;

public class UniversalUniqueIdentifier
implements Serializable {
    private static final long serialVersionUID = 1L;
    private byte[] fBits = new byte[16];
    private static BigInteger fgPreviousClockValue;
    private static int fgClockAdjustment;
    private static int fgClockSequence;
    private static byte[] nodeAddress;
    private static Random fgRandomNumberGenerator;
    public static final int BYTES_SIZE = 16;
    public static final byte[] UNDEFINED_UUID_BYTES;
    public static final int MAX_CLOCK_SEQUENCE = 16384;
    public static final int MAX_CLOCK_ADJUSTMENT = Short.MAX_VALUE;
    public static final int TIME_FIELD_START = 0;
    public static final int TIME_FIELD_STOP = 6;
    public static final int TIME_HIGH_AND_VERSION = 7;
    public static final int CLOCK_SEQUENCE_HIGH_AND_RESERVED = 8;
    public static final int CLOCK_SEQUENCE_LOW = 9;
    public static final int NODE_ADDRESS_START = 10;
    public static final int NODE_ADDRESS_BYTE_SIZE = 6;
    public static final int BYTE_MASK = 255;
    public static final int HIGH_NIBBLE_MASK = 240;
    public static final int LOW_NIBBLE_MASK = 15;
    public static final int SHIFT_NIBBLE = 4;
    public static final int ShiftByte = 8;

    static {
        fgClockAdjustment = 0;
        fgClockSequence = -1;
        nodeAddress = UniversalUniqueIdentifier.computeNodeAddress();
        fgRandomNumberGenerator = new Random();
        UNDEFINED_UUID_BYTES = new byte[16];
    }

    public UniversalUniqueIdentifier() {
        this.setVersion(1);
        this.setVariant(1);
        this.setTimeValues();
        this.setNode(UniversalUniqueIdentifier.getNodeAddress());
    }

    public UniversalUniqueIdentifier(byte[] byteValue) {
        this.fBits = new byte[16];
        if (byteValue.length >= 16) {
            System.arraycopy(byteValue, 0, this.fBits, 0, 16);
        }
    }

    private void appendByteString(StringBuffer buffer, byte value) {
        String hexString = value < 0 ? Integer.toHexString(256 + value) : Integer.toHexString(value);
        if (hexString.length() == 1) {
            buffer.append("0");
        }
        buffer.append(hexString);
    }

    private static BigInteger clockValueNow() {
        GregorianCalendar now = new GregorianCalendar();
        BigInteger nowMillis = BigInteger.valueOf(now.getTime().getTime());
        BigInteger baseMillis = BigInteger.valueOf(now.getGregorianChange().getTime());
        return nowMillis.subtract(baseMillis).multiply(BigInteger.valueOf(10000L));
    }

    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            Assert.isTrue((boolean)false, (String)"Clone not supported");
            return null;
        }
    }

    public static int compareTime(byte[] fBits1, byte[] fBits2) {
        int i = 6;
        while (i >= 0) {
            if (fBits1[i] != fBits2[i]) {
                return (0xFF & fBits1[i]) - (0xFF & fBits2[i]);
            }
            --i;
        }
        return 0;
    }

    private static byte[] computeNodeAddress() {
        byte[] address = new byte[6];
        int thread = Thread.currentThread().hashCode();
        long time = System.currentTimeMillis();
        int objectId = System.identityHashCode(new String());
        ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(byteOut);
        byte[] ipAddress = UniversalUniqueIdentifier.getIPAddress();
        try {
            if (ipAddress != null) {
                out.write(ipAddress);
            }
            out.write(thread);
            out.writeLong(time);
            out.write(objectId);
            out.close();
        }
        catch (IOException iOException) {}
        byte[] rand = byteOut.toByteArray();
        SecureRandom randomizer = new SecureRandom(rand);
        randomizer.nextBytes(address);
        address[0] = (byte)(address[0] | 0xFFFFFF80);
        return address;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UniversalUniqueIdentifier)) {
            return false;
        }
        byte[] other = ((UniversalUniqueIdentifier)obj).fBits;
        if (this.fBits == other) {
            return true;
        }
        if (this.fBits.length != other.length) {
            return false;
        }
        int i = 0;
        while (i < this.fBits.length) {
            if (this.fBits[i] != other[i]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected static byte[] getIPAddress() {
        try {
            return InetAddress.getLocalHost().getAddress();
        }
        catch (UnknownHostException unknownHostException) {
            return null;
        }
    }

    private static byte[] getNodeAddress() {
        return nodeAddress;
    }

    public int hashCode() {
        return this.fBits[0] + this.fBits[3] + this.fBits[7] + this.fBits[11] + this.fBits[15];
    }

    private static int nextClockSequence() {
        if (fgClockSequence == -1) {
            fgClockSequence = (int)(fgRandomNumberGenerator.nextDouble() * 16384.0);
        }
        fgClockSequence = (fgClockSequence + 1) % 16384;
        return fgClockSequence;
    }

    private static BigInteger nextTimestamp() {
        BigInteger timestamp = UniversalUniqueIdentifier.clockValueNow();
        int timestampComparison = timestamp.compareTo(fgPreviousClockValue);
        if (timestampComparison == 0) {
            if (fgClockAdjustment == Short.MAX_VALUE) {
                while (timestamp.compareTo(fgPreviousClockValue) == 0) {
                    timestamp = UniversalUniqueIdentifier.clockValueNow();
                }
                timestamp = UniversalUniqueIdentifier.nextTimestamp();
            } else {
                ++fgClockAdjustment;
            }
        } else {
            fgClockAdjustment = 0;
            if (timestampComparison < 0) {
                UniversalUniqueIdentifier.nextClockSequence();
            }
        }
        return timestamp;
    }

    private void setClockSequence(int clockSeq) {
        int clockSeqHigh = clockSeq >>> 8 & 0xF;
        int reserved = this.fBits[8] & 0xF0;
        this.fBits[8] = (byte)(reserved | clockSeqHigh);
        this.fBits[9] = (byte)(clockSeq & 0xFF);
    }

    protected void setNode(byte[] bytes) {
        int index = 0;
        while (index < 6) {
            this.fBits[index + 10] = bytes[index];
            ++index;
        }
    }

    private void setTimestamp(BigInteger timestamp) {
        BigInteger value = timestamp;
        BigInteger bigByte = BigInteger.valueOf(256L);
        int index = 0;
        while (index < 6) {
            BigInteger[] results = value.divideAndRemainder(bigByte);
            value = results[0];
            this.fBits[index] = (byte)results[1].intValue();
            ++index;
        }
        int version = this.fBits[7] & 0xF0;
        int timeHigh = value.intValue() & 0xF;
        this.fBits[7] = (byte)(timeHigh | version);
    }

    protected synchronized void setTimeValues() {
        this.setTimestamp(UniversalUniqueIdentifier.timestamp());
        this.setClockSequence(fgClockSequence);
    }

    protected int setVariant(int variantIdentifier) {
        int clockSeqHigh = this.fBits[8] & 0xF;
        int variant = variantIdentifier & 0xF;
        this.fBits[8] = (byte)(variant << 4 | clockSeqHigh);
        return variant;
    }

    protected void setVersion(int versionIdentifier) {
        int timeHigh = this.fBits[7] & 0xF;
        int version = versionIdentifier & 0xF;
        this.fBits[7] = (byte)(timeHigh | version << 4);
    }

    private static BigInteger timestamp() {
        BigInteger timestamp;
        if (fgPreviousClockValue == null) {
            fgClockAdjustment = 0;
            UniversalUniqueIdentifier.nextClockSequence();
            timestamp = UniversalUniqueIdentifier.clockValueNow();
        } else {
            timestamp = UniversalUniqueIdentifier.nextTimestamp();
        }
        fgPreviousClockValue = timestamp;
        return fgClockAdjustment == 0 ? timestamp : timestamp.add(BigInteger.valueOf(fgClockAdjustment));
    }

    public byte[] toBytes() {
        byte[] result = new byte[this.fBits.length];
        System.arraycopy(this.fBits, 0, result, 0, this.fBits.length);
        return result;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < this.fBits.length) {
            this.appendByteString(buffer, this.fBits[i]);
            ++i;
        }
        return buffer.toString();
    }

    public String toStringAsBytes() {
        String result = "{";
        int i = 0;
        while (i < this.fBits.length) {
            result = String.valueOf(result) + this.fBits[i];
            if (i < this.fBits.length + 1) {
                result = String.valueOf(result) + ",";
            }
            ++i;
        }
        return String.valueOf(result) + "}";
    }
}

