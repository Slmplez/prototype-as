/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;

public class NullInfoRegistry
extends UnconditionalFlowInfo {
    public NullInfoRegistry(UnconditionalFlowInfo upstream) {
        this.maxFieldCount = upstream.maxFieldCount;
        if ((upstream.tagBits & 4) != 0) {
            long u1 = upstream.nullBit1;
            long u2 = upstream.nullBit2;
            long u3 = upstream.nullBit3;
            long nu3 = u3 ^ 0xFFFFFFFFFFFFFFFFL;
            long u4 = upstream.nullBit4;
            long nu4 = u4 ^ 0xFFFFFFFFFFFFFFFFL;
            this.nullBit2 = u1 & u2 & nu3 & nu4;
            long nu2 = u2 ^ 0xFFFFFFFFFFFFFFFFL;
            this.nullBit3 = u1 & nu2 & u3 & nu4;
            this.nullBit4 = u1 & nu2 & nu3 & u4;
            if ((this.nullBit2 | this.nullBit3 | this.nullBit4) != 0L) {
                this.tagBits |= 4;
            }
            if (upstream.extra != null) {
                this.extra = new long[6][];
                int length = upstream.extra[2].length;
                int i = 2;
                while (i < 6) {
                    this.extra[i] = new long[length];
                    ++i;
                }
                i = 0;
                while (i < length) {
                    u1 = upstream.extra[2][i];
                    u2 = upstream.extra[3][i];
                    u3 = upstream.extra[4][i];
                    nu3 = u3 ^ 0xFFFFFFFFFFFFFFFFL;
                    u4 = upstream.extra[5][i];
                    nu4 = u4 ^ 0xFFFFFFFFFFFFFFFFL;
                    this.extra[3][i] = u1 & u2 & nu3 & nu4;
                    nu2 = u2 ^ 0xFFFFFFFFFFFFFFFFL;
                    this.extra[4][i] = u1 & nu2 & u3 & nu4;
                    this.extra[5][i] = u1 & nu2 & nu3 & u4;
                    if ((this.extra[3][i] | this.extra[4][i] | this.extra[5][i]) != 0L) {
                        this.tagBits |= 4;
                    }
                    ++i;
                }
            }
        }
    }

    public NullInfoRegistry add(NullInfoRegistry other) {
        block10: {
            if ((other.tagBits & 4) == 0) {
                return this;
            }
            this.tagBits |= 4;
            this.nullBit1 |= other.nullBit1;
            this.nullBit2 |= other.nullBit2;
            this.nullBit3 |= other.nullBit3;
            this.nullBit4 |= other.nullBit4;
            if (other.extra == null) break block10;
            if (this.extra == null) {
                this.extra = new long[6][];
                int i = 2;
                int length = other.extra[2].length;
                while (i < 6) {
                    this.extra[i] = new long[length];
                    System.arraycopy(other.extra[i], 0, this.extra[i], 0, length);
                    ++i;
                }
            } else {
                int i;
                int otherLength = other.extra[2].length;
                int length = this.extra[2].length;
                if (otherLength > length) {
                    i = 2;
                    while (i < 6) {
                        this.extra[i] = new long[otherLength];
                        System.arraycopy(this.extra[i], 0, this.extra[i], 0, length);
                        System.arraycopy(other.extra[i], length, this.extra[i], length, otherLength - length);
                        ++i;
                    }
                } else if (otherLength < length) {
                    length = otherLength;
                }
                i = 2;
                while (i < 6) {
                    int j = 0;
                    while (j < length) {
                        long[] lArray = this.extra[i];
                        int n = j;
                        lArray[n] = lArray[n] | other.extra[i][j];
                        ++j;
                    }
                    ++i;
                }
            }
        }
        return this;
    }

    public void markAsComparedEqualToNonNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                this.nullBit1 |= 1L << position;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                lArray[n] = lArray[n] | 1L << position % 64;
            }
        }
    }

    public void markAsDefinitelyNonNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                this.nullBit3 |= 1L << position;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[4];
                int n = vectorIndex;
                lArray[n] = lArray[n] | 1L << position % 64;
            }
        }
    }

    public void markAsDefinitelyNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                this.nullBit2 |= 1L << position;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[3];
                int n = vectorIndex;
                lArray[n] = lArray[n] | 1L << position % 64;
            }
        }
    }

    public void markAsDefinitelyUnknown(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                this.nullBit4 |= 1L << position;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[5];
                int n = vectorIndex;
                lArray[n] = lArray[n] | 1L << position % 64;
            }
        }
    }

    public UnconditionalFlowInfo mitigateNullInfoOf(FlowInfo flowInfo) {
        long nm2;
        long nm1;
        if ((this.tagBits & 4) == 0) {
            return flowInfo.unconditionalInits();
        }
        boolean newCopy = false;
        UnconditionalFlowInfo source = flowInfo.unconditionalInits();
        long s1 = source.nullBit1;
        long s3 = source.nullBit3;
        long s4 = source.nullBit4;
        long a2 = this.nullBit2;
        long a4 = this.nullBit4;
        long m1 = s1 & s3 & s4 & (a2 | a4);
        long s2 = this.nullBit2;
        long a3 = this.nullBit3;
        long m2 = s1 & s2 & (s3 ^ s4) & (a3 | a4);
        long ns3 = s3 ^ 0xFFFFFFFFFFFFFFFFL;
        long ns4 = s4 ^ 0xFFFFFFFFFFFFFFFFL;
        long ns2 = s2 ^ 0xFFFFFFFFFFFFFFFFL;
        long m3 = s1 & (s2 & ns3 & ns4 & (a3 | a4) | ns2 & s3 & ns4 & (a2 | a4) | ns2 & ns3 & s4 & (a2 | a3));
        long m = m1 | m2 | m3;
        if (m != 0L) {
            newCopy = true;
            source = source.unconditionalCopy();
            source.nullBit1 &= m ^ 0xFFFFFFFFFFFFFFFFL;
            nm1 = m1 ^ 0xFFFFFFFFFFFFFFFFL;
            nm2 = m2 ^ 0xFFFFFFFFFFFFFFFFL;
            source.nullBit2 &= nm1 & (nm2 | a4);
            source.nullBit3 &= (nm1 | a2) & nm2;
            source.nullBit4 &= nm1 & nm2;
            long x = (this.nullBit1 ^ 0xFFFFFFFFFFFFFFFFL) & a2 & a3 & a4;
            if (x != 0L) {
                source.nullBit1 &= x ^ 0xFFFFFFFFFFFFFFFFL;
                source.nullBit2 |= x;
                source.nullBit3 |= x;
                source.nullBit4 |= x;
            }
        }
        if (this.extra != null && source.extra != null) {
            int sourceLength = source.extra[0].length;
            int length = this.extra[2].length;
            if (sourceLength < length) {
                length = sourceLength;
            }
            int i = 0;
            while (i < length) {
                s1 = source.extra[2][i];
                s3 = source.extra[4][i];
                s4 = source.extra[5][i];
                a2 = this.extra[3][i];
                a4 = this.extra[5][i];
                m1 = s1 & s3 & s4 & (a2 | a4);
                s2 = this.extra[3][i];
                a3 = this.extra[4][i];
                m2 = s1 & s2 & (s3 ^ s4) & (a3 | a4);
                ns3 = s3 ^ 0xFFFFFFFFFFFFFFFFL;
                ns4 = s4 ^ 0xFFFFFFFFFFFFFFFFL;
                ns2 = s2 ^ 0xFFFFFFFFFFFFFFFFL;
                m3 = s1 & (s2 & ns3 & ns4 & (a3 | a4) | ns2 & s3 & ns4 & (a2 | a4) | ns2 & ns3 & s4 & (a2 | a3));
                m = m1 | m2 | m3;
                if (m != 0L) {
                    if (!newCopy) {
                        newCopy = true;
                        source = source.unconditionalCopy();
                    }
                    long[] lArray = source.extra[2];
                    int n = i;
                    lArray[n] = lArray[n] & (m ^ 0xFFFFFFFFFFFFFFFFL);
                    long[] lArray2 = source.extra[3];
                    int n2 = i;
                    nm1 = m1 ^ 0xFFFFFFFFFFFFFFFFL;
                    nm2 = m2 ^ 0xFFFFFFFFFFFFFFFFL;
                    lArray2[n2] = lArray2[n2] & (nm1 & (nm2 | a4));
                    long[] lArray3 = source.extra[4];
                    int n3 = i;
                    lArray3[n3] = lArray3[n3] & ((nm1 | a2) & nm2);
                    long[] lArray4 = source.extra[5];
                    int n4 = i;
                    lArray4[n4] = lArray4[n4] & (nm1 & nm2);
                }
                ++i;
            }
        }
        return source;
    }

    public String toString() {
        if (this.extra == null) {
            return "NullInfoRegistry<" + this.nullBit1 + this.nullBit2 + this.nullBit3 + this.nullBit4 + ">";
        }
        String nullS = "NullInfoRegistry<[" + this.nullBit1 + this.nullBit2 + this.nullBit3 + this.nullBit4;
        int i = 0;
        int ceil = this.extra[0].length > 3 ? 3 : this.extra[0].length;
        while (i < ceil) {
            nullS = String.valueOf(nullS) + "," + this.extra[2][i] + this.extra[3][i] + this.extra[4][i] + this.extra[5][i];
            ++i;
        }
        if (ceil < this.extra[0].length) {
            nullS = String.valueOf(nullS) + ",...";
        }
        return String.valueOf(nullS) + "]>";
    }

    public void markPotentiallyUnknownBit(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                NullInfoRegistry.isTrue((this.nullBit1 & mask) == 0L, "Adding 'unknown' mark in unexpected state");
                this.nullBit4 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long mask = 1L << position % 64;
                NullInfoRegistry.isTrue((this.extra[2][vectorIndex] & mask) == 0L, "Adding 'unknown' mark in unexpected state");
                long[] lArray = this.extra[5];
                int n = vectorIndex;
                lArray[n] = lArray[n] | mask;
            }
        }
    }

    public void markPotentiallyNullBit(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                NullInfoRegistry.isTrue((this.nullBit1 & mask) == 0L, "Adding 'potentially null' mark in unexpected state");
                this.nullBit2 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long mask = 1L << position % 64;
                long[] lArray = this.extra[3];
                int n = vectorIndex;
                lArray[n] = lArray[n] | mask;
                NullInfoRegistry.isTrue((this.extra[2][vectorIndex] & mask) == 0L, "Adding 'potentially null' mark in unexpected state");
            }
        }
    }

    public void markPotentiallyNonNullBit(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                NullInfoRegistry.isTrue((this.nullBit1 & mask) == 0L, "Adding 'potentially non-null' mark in unexpected state");
                this.nullBit3 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[2].length;
                    if (vectorIndex >= oldLength) {
                        int j = 2;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long mask = 1L << position % 64;
                NullInfoRegistry.isTrue((this.extra[2][vectorIndex] & mask) == 0L, "Adding 'potentially non-null' mark in unexpected state");
                long[] lArray = this.extra[4];
                int n = vectorIndex;
                lArray[n] = lArray[n] | mask;
            }
        }
    }
}

