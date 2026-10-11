/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.GregorianCalendar;
import java.util.Random;

public class UniversalUniqueIdentifier {
    private byte[] fBits = new byte[16];
    private static volatile BigInteger fgPreviousClockValue;
    private static volatile int fgClockAdjustment;
    private static volatile int fgClockSequence;
    private static final byte[] nodeAddress;
    private static final Random fgRandomNumberGenerator;
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

    private static byte[] getIPAddress() {
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

    private void setNode(byte[] bytes) {
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

    private synchronized void setTimeValues() {
        this.setTimestamp(UniversalUniqueIdentifier.timestamp());
        this.setClockSequence(fgClockSequence);
    }

    private int setVariant(int variantIdentifier) {
        int clockSeqHigh = this.fBits[8] & 0xF;
        int variant = variantIdentifier & 0xF;
        this.fBits[8] = (byte)(variant << 4 | clockSeqHigh);
        return variant;
    }

    private void setVersion(int versionIdentifier) {
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

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < this.fBits.length) {
            if (i == 4 || i == 6 || i == 8 || i == 10) {
                buffer.append('-');
            }
            this.appendByteString(buffer, this.fBits[i]);
            ++i;
        }
        return buffer.toString();
    }
}

