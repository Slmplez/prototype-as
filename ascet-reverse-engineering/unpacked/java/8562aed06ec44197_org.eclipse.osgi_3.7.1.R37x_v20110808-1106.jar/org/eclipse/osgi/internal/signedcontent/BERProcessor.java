/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.signedcontent;

import java.math.BigInteger;
import java.security.SignatureException;

public class BERProcessor {
    byte[] buffer;
    int offset;
    int lastOffset;
    int contentOffset;
    int contentLength;
    int endOffset;
    int classOfTag;
    static final int UNIVERSAL_TAGCLASS = 0;
    static final int APPLICATION_TAGCLASS = 1;
    static final int CONTEXTSPECIFIC_TAGCLASS = 2;
    static final int PRIVATE_TAGCLASS = 3;
    static final byte BOOLTAG = 1;
    static final byte INTTAG = 2;
    static final byte OIDTAG = 6;
    static final byte SEQTAG = 16;
    static final byte SETTAG = 17;
    static final byte NULLTAG = 5;
    static final String[] tagNames = new String[]{"<null>", "boolean", "int", "bitstring", "octetstring", "null", "objid", "objdesc", "external", "real", "enum", "pdv", "utf8", "relobjid", "resv", "resv", "sequence", "set", "char string"};
    public boolean constructed;
    public byte tag;

    public BERProcessor(byte[] buffer, int offset, int len) throws SignatureException {
        this.buffer = buffer;
        this.offset = offset;
        this.lastOffset = len + offset;
        this.processStructure();
    }

    public void processStructure() throws SignatureException {
        if (this.offset == -1) {
            return;
        }
        this.endOffset = this.offset;
        this.classOfTag = (this.buffer[this.offset] & 0xFF) >> 6;
        this.constructed = (this.buffer[this.offset] & 0x20) != 0;
        byte tagNumber = (byte)(this.buffer[this.offset] & 0x1F);
        if (tagNumber >= 32) {
            throw new SignatureException("Can't handle tags > 32");
        }
        this.tag = tagNumber;
        this.endOffset = this.offset + 1;
        if ((this.buffer[this.endOffset] & 0x80) == 0) {
            this.contentLength = this.buffer[this.endOffset];
            ++this.endOffset;
        } else {
            int octetCount = this.buffer[this.endOffset] & 0x7F;
            if (octetCount > 3) {
                throw new SignatureException("ContentLength octet count too large: " + octetCount);
            }
            this.contentLength = 0;
            ++this.endOffset;
            int i = 0;
            while (i < octetCount) {
                this.contentLength <<= 8;
                this.contentLength |= this.buffer[this.endOffset] & 0xFF;
                ++this.endOffset;
                ++i;
            }
            if (octetCount == 0) {
                this.contentLength = -1;
            }
        }
        this.contentOffset = this.endOffset;
        if (this.contentLength != -1) {
            this.endOffset += this.contentLength;
        }
        if (this.endOffset > this.lastOffset) {
            throw new SignatureException("Content length too large: " + this.endOffset + " > " + this.lastOffset);
        }
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        switch (this.classOfTag) {
            case 0: {
                sb.append('U');
                break;
            }
            case 1: {
                sb.append('A');
                break;
            }
            case 2: {
                sb.append('C');
                break;
            }
            case 3: {
                sb.append('P');
            }
        }
        sb.append(this.constructed ? (char)'C' : 'P');
        sb.append(" tag=" + this.tag);
        if (this.tag < tagNames.length) {
            sb.append("(" + tagNames[this.tag] + ")");
        }
        sb.append(" len=");
        sb.append(this.contentLength);
        switch (this.tag) {
            case 2: {
                sb.append(" value=" + this.getIntValue());
                break;
            }
            case 6: {
                sb.append(" value=");
                int[] oid = this.getObjId();
                int i = 0;
                while (i < oid.length) {
                    if (i > 0) {
                        sb.append('.');
                    }
                    sb.append(oid[i]);
                    ++i;
                }
                break;
            }
        }
        if (this.tag == 12 || this.tag >= 18 && this.tag <= 22 || this.tag >= 25 && this.tag <= 30) {
            sb.append(" value=");
            sb.append(this.getString());
        }
        return sb.toString();
    }

    public BERProcessor stepInto() throws SignatureException {
        return new BERProcessor(this.buffer, this.contentOffset, this.contentLength);
    }

    public void stepOver() throws SignatureException {
        this.offset = this.endOffset;
        if (this.endOffset >= this.lastOffset) {
            this.offset = -1;
            return;
        }
        this.processStructure();
    }

    public boolean endOfSequence() {
        return this.offset == -1;
    }

    public String getString() {
        return new String(this.buffer, this.contentOffset, this.contentLength);
    }

    public BigInteger getIntValue() {
        return new BigInteger(this.getBytes());
    }

    public int[] getObjId() {
        int count = 0;
        int i = 0;
        while (i < this.contentLength) {
            if ((this.buffer[this.contentOffset + i] & 0x80) == 0) {
                ++count;
            }
            ++i;
        }
        int[] oid = new int[++count];
        int index = 0;
        int currentValue = 0;
        int i2 = 0;
        while (i2 < this.contentLength) {
            currentValue <<= 7;
            currentValue |= this.buffer[this.contentOffset + i2] & 0x7F;
            if ((this.buffer[this.contentOffset + i2] & 0x80) == 0) {
                if (index == 0) {
                    oid[index++] = currentValue / 40;
                    oid[index++] = currentValue % 40;
                } else {
                    oid[index++] = currentValue;
                }
                currentValue = 0;
            }
            ++i2;
        }
        return oid;
    }

    public byte[] getBytes() {
        byte[] v = new byte[this.contentLength];
        System.arraycopy(this.buffer, this.contentOffset, v, 0, this.contentLength);
        return v;
    }
}

