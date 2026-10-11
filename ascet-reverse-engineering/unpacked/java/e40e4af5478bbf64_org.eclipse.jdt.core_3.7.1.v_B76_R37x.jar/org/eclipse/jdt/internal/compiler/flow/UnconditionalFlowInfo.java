/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.flow;

import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class UnconditionalFlowInfo
extends FlowInfo {
    public static final boolean COVERAGE_TEST_FLAG = false;
    public static int CoverageTestId;
    public long definiteInits;
    public long potentialInits;
    public long nullBit1;
    public long nullBit2;
    public long nullBit3;
    public long nullBit4;
    public static final int extraLength = 6;
    public long[][] extra;
    public int maxFieldCount;
    public static final int BitCacheSize = 64;
    public int[] nullStatusChangedInAssert;

    public FlowInfo addInitializationsFrom(FlowInfo inits) {
        return this.addInfoFrom(inits, true);
    }

    public FlowInfo addNullInfoFrom(FlowInfo inits) {
        return this.addInfoFrom(inits, false);
    }

    private FlowInfo addInfoFrom(FlowInfo inits, boolean handleInits) {
        long na1;
        long nb1;
        long nb3;
        long b3;
        long na2;
        long a2;
        long na3;
        long na4;
        long nb4;
        long b4;
        long nb2;
        long b2;
        long a4;
        long a3;
        long a1;
        long b1;
        boolean otherHasNulls;
        if (this == DEAD_END) {
            return this;
        }
        if (inits == DEAD_END) {
            return this;
        }
        UnconditionalFlowInfo otherInits = inits.unconditionalInits();
        if (handleInits) {
            this.definiteInits |= otherInits.definiteInits;
            this.potentialInits |= otherInits.potentialInits;
        }
        boolean thisHadNulls = (this.tagBits & 4) != 0;
        boolean bl = otherHasNulls = (otherInits.tagBits & 4) != 0;
        if (otherHasNulls) {
            if (!thisHadNulls) {
                this.nullBit1 = otherInits.nullBit1;
                this.nullBit2 = otherInits.nullBit2;
                this.nullBit3 = otherInits.nullBit3;
                this.nullBit4 = otherInits.nullBit4;
            } else {
                b1 = otherInits.nullBit1;
                a1 = this.nullBit1;
                a3 = this.nullBit3;
                a4 = this.nullBit4;
                b2 = otherInits.nullBit2;
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                b4 = otherInits.nullBit4;
                nb4 = b4 ^ 0xFFFFFFFFFFFFFFFFL;
                na4 = a4 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL;
                a2 = this.nullBit2;
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                b3 = otherInits.nullBit3;
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
                this.nullBit1 = b1 | a1 & (a3 & a4 & nb2 & nb4 | (na4 | na3) & (na2 & nb2 | a2 & nb3 & nb4));
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                this.nullBit2 = b2 & (nb4 | nb3) | na3 & na4 & b2 | a2 & (nb3 & nb4 | nb1 & (na3 | na1) | a1 & b2);
                this.nullBit3 = b3 & (nb1 & (b2 | a2 | na1) | b1 & (b4 | nb2 | a1 & a3) | na1 & na2 & na4) | a3 & nb2 & nb4 | nb1 & ((na2 & a4 | na1) & a3 | a1 & na2 & na4 & b2);
                this.nullBit4 = nb1 & (a4 & (na3 & nb3 | (a3 | na2) & nb2) | a1 & (a3 & nb2 & b4 | a2 & b2 & (b4 | a3 & na4 & nb3))) | b1 & (a3 & a4 & b4 | na2 & na4 & nb3 & b4 | a2 & ((b3 | a4) & b4 | na3 & a4 & b2 & b3) | na1 & (b4 | (a4 | a2) & b2 & b3)) | (na1 & (na3 & nb3 | na2 & nb2) | a1 & (nb2 & nb3 | a2 & a3)) & b4;
            }
            this.tagBits |= 4;
        }
        if (this.extra != null || otherInits.extra != null) {
            int i;
            int j;
            int mergeLimit = 0;
            int copyLimit = 0;
            if (this.extra != null) {
                if (otherInits.extra != null) {
                    int length = this.extra[0].length;
                    int otherLength = otherInits.extra[0].length;
                    if (length < otherLength) {
                        int j2 = 0;
                        while (j2 < 6) {
                            this.extra[j2] = new long[otherLength];
                            System.arraycopy(this.extra[j2], 0, this.extra[j2], 0, length);
                            ++j2;
                        }
                        mergeLimit = length;
                        copyLimit = otherLength;
                    } else {
                        mergeLimit = otherLength;
                    }
                }
            } else if (otherInits.extra != null) {
                this.extra = new long[6][];
                int otherLength = otherInits.extra[0].length;
                this.extra[0] = new long[otherLength];
                System.arraycopy(otherInits.extra[0], 0, this.extra[0], 0, otherLength);
                this.extra[1] = new long[otherLength];
                System.arraycopy(otherInits.extra[1], 0, this.extra[1], 0, otherLength);
                if (otherHasNulls) {
                    j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[otherLength];
                        System.arraycopy(otherInits.extra[j], 0, this.extra[j], 0, otherLength);
                        ++j;
                    }
                } else {
                    j = 2;
                    while (j < 6) {
                        this.extra[j] = new long[otherLength];
                        ++j;
                    }
                }
            }
            if (handleInits) {
                i = 0;
                while (i < mergeLimit) {
                    long[] lArray = this.extra[0];
                    int n = i;
                    lArray[n] = lArray[n] | otherInits.extra[0][i];
                    long[] lArray2 = this.extra[1];
                    int n2 = i;
                    lArray2[n2] = lArray2[n2] | otherInits.extra[1][i];
                    ++i;
                }
                while (i < copyLimit) {
                    this.extra[0][i] = otherInits.extra[0][i];
                    this.extra[1][i] = otherInits.extra[1][i];
                    ++i;
                }
            }
            if (!thisHadNulls) {
                if (copyLimit < mergeLimit) {
                    copyLimit = mergeLimit;
                }
                mergeLimit = 0;
            }
            if (!otherHasNulls) {
                copyLimit = 0;
                mergeLimit = 0;
            }
            i = 0;
            while (i < mergeLimit) {
                b1 = otherInits.extra[2][i];
                a1 = this.extra[2][i];
                a3 = this.extra[4][i];
                a4 = this.extra[5][i];
                b2 = otherInits.extra[3][i];
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                b4 = otherInits.extra[5][i];
                nb4 = b4 ^ 0xFFFFFFFFFFFFFFFFL;
                na4 = a4 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL;
                a2 = this.extra[3][i];
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                b3 = otherInits.extra[4][i];
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[2][i] = b1 | a1 & (a3 & a4 & nb2 & nb4 | (na4 | na3) & (na2 & nb2 | a2 & nb3 & nb4));
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[3][i] = b2 & (nb4 | nb3) | na3 & na4 & b2 | a2 & (nb3 & nb4 | nb1 & (na3 | na1) | a1 & b2);
                this.extra[4][i] = b3 & (nb1 & (b2 | a2 | na1) | b1 & (b4 | nb2 | a1 & a3) | na1 & na2 & na4) | a3 & nb2 & nb4 | nb1 & ((na2 & a4 | na1) & a3 | a1 & na2 & na4 & b2);
                this.extra[5][i] = nb1 & (a4 & (na3 & nb3 | (a3 | na2) & nb2) | a1 & (a3 & nb2 & b4 | a2 & b2 & (b4 | a3 & na4 & nb3))) | b1 & (a3 & a4 & b4 | na2 & na4 & nb3 & b4 | a2 & ((b3 | a4) & b4 | na3 & a4 & b2 & b3) | na1 & (b4 | (a4 | a2) & b2 & b3)) | (na1 & (na3 & nb3 | na2 & nb2) | a1 & (nb2 & nb3 | a2 & a3)) & b4;
                ++i;
            }
            while (i < copyLimit) {
                j = 2;
                while (j < 6) {
                    this.extra[j][i] = otherInits.extra[j][i];
                    ++j;
                }
                ++i;
            }
        }
        this.combineNullStatusChangeInAssertInfo(otherInits);
        return this;
    }

    /*
     * Unable to fully structure code
     */
    public FlowInfo addPotentialInitializationsFrom(FlowInfo inits) {
        block9: {
            block8: {
                if (this == UnconditionalFlowInfo.DEAD_END) {
                    return this;
                }
                if (inits == UnconditionalFlowInfo.DEAD_END) {
                    return this;
                }
                otherInits = inits.unconditionalInits();
                this.potentialInits |= otherInits.potentialInits;
                if (this.extra == null) break block8;
                if (otherInits.extra == null) break block9;
                i = 0;
                length = this.extra[0].length;
                otherLength = otherInits.extra[0].length;
                if (length >= otherLength) ** GOTO lbl34
                j = 0;
                while (j < 6) {
                    this.extra[j] = new long[otherLength];
                    System.arraycopy(this.extra[j], 0, this.extra[j], 0, length);
                    ++j;
                }
                while (i < length) {
                    v0 = this.extra[1];
                    v1 = i;
                    v0[v1] = v0[v1] | otherInits.extra[1][i];
                    ++i;
                }
                while (i < otherLength) {
                    this.extra[1][i] = otherInits.extra[1][i];
                    ++i;
                }
                break block9;
lbl-1000:
                // 1 sources

                {
                    v2 = this.extra[1];
                    v3 = i;
                    v2[v3] = v2[v3] | otherInits.extra[1][i];
                    ++i;
lbl34:
                    // 2 sources

                    ** while (i < otherLength)
                }
lbl35:
                // 1 sources

                break block9;
            }
            if (otherInits.extra != null) {
                otherLength = otherInits.extra[0].length;
                this.extra = new long[6][];
                j = 0;
                while (j < 6) {
                    this.extra[j] = new long[otherLength];
                    ++j;
                }
                System.arraycopy(otherInits.extra[1], 0, this.extra[1], 0, otherLength);
            }
        }
        this.addPotentialNullInfoFrom(otherInits);
        return this;
    }

    public UnconditionalFlowInfo addPotentialNullInfoFrom(UnconditionalFlowInfo otherInits) {
        long na1;
        long nb1;
        long nb3;
        long na3;
        long na4;
        long na2;
        long a2;
        long b3;
        long b1;
        long nb4;
        long b4;
        long nb2;
        long b2;
        long a4;
        long a3;
        long a1;
        if ((this.tagBits & 3) != 0 || (otherInits.tagBits & 3) != 0 || (otherInits.tagBits & 4) == 0) {
            return this;
        }
        boolean thisHadNulls = (this.tagBits & 4) != 0;
        boolean thisHasNulls = false;
        if (thisHadNulls) {
            a1 = this.nullBit1;
            a3 = this.nullBit3;
            a4 = this.nullBit4;
            b2 = otherInits.nullBit2;
            nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
            b4 = otherInits.nullBit4;
            nb4 = b4 ^ 0xFFFFFFFFFFFFFFFFL;
            b1 = otherInits.nullBit1;
            b3 = otherInits.nullBit3;
            a2 = this.nullBit2;
            na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
            na4 = a4 ^ 0xFFFFFFFFFFFFFFFFL;
            na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL;
            nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
            this.nullBit1 = a1 & (a3 & a4 & (nb2 & nb4 | b1 & b3) | na2 & (b1 & b3 | (na4 | na3) & nb2) | a2 & ((na4 | na3) & (nb3 & nb4 | b1 & b2)));
            nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
            na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
            this.nullBit2 = b2 & (nb3 | nb1) | a2 & (nb3 & nb4 | b2 | na3 | na1);
            this.nullBit3 = b3 & (nb1 & b2 | a2 & (nb2 | a3) | na1 & nb2 | a1 & na2 & na4 & b1) | a3 & (nb2 & nb4 | na2 & a4 | na1) | a1 & na2 & na4 & b2;
            this.nullBit4 = na3 & (nb1 & nb3 & b4 | a4 & (nb3 | b1 & b2)) | nb2 & (na3 & b1 & nb3 | na2 & (nb1 & b4 | b1 & nb3 | a4)) | a3 & (a4 & (nb2 | b1 & b3) | a1 & a2 & (nb1 & b4 | na4 & (b2 | b1) & nb3));
            if ((this.nullBit2 | this.nullBit3 | this.nullBit4) != 0L) {
                thisHasNulls = true;
            }
        } else {
            this.nullBit1 = 0L;
            b2 = otherInits.nullBit2;
            b3 = otherInits.nullBit3;
            nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
            b1 = otherInits.nullBit1;
            nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
            this.nullBit2 = b2 & (nb3 | nb1);
            nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
            this.nullBit3 = b3 & (nb1 | nb2);
            b4 = otherInits.nullBit4;
            this.nullBit4 = (b1 ^ 0xFFFFFFFFFFFFFFFFL) & (b3 ^ 0xFFFFFFFFFFFFFFFFL) & b4 | (b2 ^ 0xFFFFFFFFFFFFFFFFL) & (b1 & (b3 ^ 0xFFFFFFFFFFFFFFFFL) | (b1 ^ 0xFFFFFFFFFFFFFFFFL) & b4);
            if ((this.nullBit2 | this.nullBit3 | this.nullBit4) != 0L) {
                thisHasNulls = true;
            }
        }
        if (otherInits.extra != null) {
            int j;
            int mergeLimit = 0;
            int copyLimit = otherInits.extra[0].length;
            if (this.extra == null) {
                this.extra = new long[6][];
                j = 0;
                while (j < 6) {
                    this.extra[j] = new long[copyLimit];
                    ++j;
                }
            } else {
                mergeLimit = copyLimit;
                if (mergeLimit > this.extra[0].length) {
                    mergeLimit = this.extra[0].length;
                    j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[copyLimit];
                        System.arraycopy(this.extra[j], 0, this.extra[j], 0, mergeLimit);
                        ++j;
                    }
                    if (!thisHadNulls) {
                        mergeLimit = 0;
                    }
                }
            }
            int i = 0;
            while (i < mergeLimit) {
                a1 = this.extra[2][i];
                a3 = this.extra[4][i];
                a4 = this.extra[5][i];
                b2 = otherInits.extra[3][i];
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                b4 = otherInits.extra[5][i];
                nb4 = b4 ^ 0xFFFFFFFFFFFFFFFFL;
                b1 = otherInits.extra[2][i];
                b3 = otherInits.extra[4][i];
                a2 = this.extra[3][i];
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                na4 = a4 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL;
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[2][i] = a1 & (a3 & a4 & (nb2 & nb4 | b1 & b3) | na2 & (b1 & b3 | (na4 | na3) & nb2) | a2 & ((na4 | na3) & (nb3 & nb4 | b1 & b2)));
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[3][i] = b2 & (nb3 | nb1) | a2 & (nb3 & nb4 | b2 | na3 | na1);
                this.extra[4][i] = b3 & (nb1 & b2 | a2 & (nb2 | a3) | na1 & nb2 | a1 & na2 & na4 & b1) | a3 & (nb2 & nb4 | na2 & a4 | na1) | a1 & na2 & na4 & b2;
                this.extra[5][i] = na3 & (nb1 & nb3 & b4 | a4 & (nb3 | b1 & b2)) | nb2 & (na3 & b1 & nb3 | na2 & (nb1 & b4 | b1 & nb3 | a4)) | a3 & (a4 & (nb2 | b1 & b3) | a1 & a2 & (nb1 & b4 | na4 & (b2 | b1) & nb3));
                if ((this.extra[3][i] | this.extra[4][i] | this.extra[5][i]) != 0L) {
                    thisHasNulls = true;
                }
                ++i;
            }
            while (i < copyLimit) {
                this.extra[2][i] = 0L;
                b2 = otherInits.extra[3][i];
                b3 = otherInits.extra[4][i];
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
                b1 = otherInits.extra[2][i];
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[3][i] = b2 & (nb3 | nb1);
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[4][i] = b3 & (nb1 | nb2);
                b4 = otherInits.extra[5][i];
                this.extra[5][i] = (b1 ^ 0xFFFFFFFFFFFFFFFFL) & (b3 ^ 0xFFFFFFFFFFFFFFFFL) & b4 | (b2 ^ 0xFFFFFFFFFFFFFFFFL) & (b1 & (b3 ^ 0xFFFFFFFFFFFFFFFFL) | (b1 ^ 0xFFFFFFFFFFFFFFFFL) & b4);
                if ((this.extra[3][i] | this.extra[4][i] | this.extra[5][i]) != 0L) {
                    thisHasNulls = true;
                }
                ++i;
            }
        }
        this.combineNullStatusChangeInAssertInfo(otherInits);
        this.tagBits = thisHasNulls ? (this.tagBits |= 4) : (this.tagBits &= 4);
        return this;
    }

    public final boolean cannotBeDefinitelyNullOrNonNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (((this.nullBit1 ^ 0xFFFFFFFFFFFFFFFFL) & (this.nullBit2 & this.nullBit3 | this.nullBit4) | (this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL) & (this.nullBit3 ^ 0xFFFFFFFFFFFFFFFFL) & this.nullBit4) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        long a2 = this.extra[3][vectorIndex];
        long a3 = this.extra[4][vectorIndex];
        long a4 = this.extra[5][vectorIndex];
        return (((this.extra[2][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & (a2 & a3 | a4) | (a2 ^ 0xFFFFFFFFFFFFFFFFL) & (a3 ^ 0xFFFFFFFFFFFFFFFFL) & a4) & 1L << position % 64) != 0L;
    }

    public final boolean cannotBeNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit3 & (this.nullBit2 & this.nullBit4 | this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[4][vectorIndex] & (this.extra[3][vectorIndex] & this.extra[5][vectorIndex] | this.extra[3][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position % 64) != 0L;
    }

    public final boolean canOnlyBeNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit2 & (this.nullBit3 ^ 0xFFFFFFFFFFFFFFFFL | this.nullBit4 ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[3][vectorIndex] & (this.extra[4][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | this.extra[5][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position % 64) != 0L;
    }

    public FlowInfo copy() {
        boolean hasNullInfo;
        if (this == DEAD_END) {
            return this;
        }
        UnconditionalFlowInfo copy = new UnconditionalFlowInfo();
        copy.definiteInits = this.definiteInits;
        copy.potentialInits = this.potentialInits;
        boolean bl = hasNullInfo = (this.tagBits & 4) != 0;
        if (hasNullInfo) {
            copy.nullBit1 = this.nullBit1;
            copy.nullBit2 = this.nullBit2;
            copy.nullBit3 = this.nullBit3;
            copy.nullBit4 = this.nullBit4;
        }
        copy.tagBits = this.tagBits;
        copy.maxFieldCount = this.maxFieldCount;
        if (this.extra != null) {
            copy.extra = new long[6][];
            int length = this.extra[0].length;
            copy.extra[0] = new long[length];
            System.arraycopy(this.extra[0], 0, copy.extra[0], 0, length);
            copy.extra[1] = new long[length];
            System.arraycopy(this.extra[1], 0, copy.extra[1], 0, length);
            if (hasNullInfo) {
                int j = 2;
                while (j < 6) {
                    copy.extra[j] = new long[length];
                    System.arraycopy(this.extra[j], 0, copy.extra[j], 0, length);
                    ++j;
                }
            } else {
                int j = 2;
                while (j < 6) {
                    copy.extra[j] = new long[length];
                    ++j;
                }
            }
        }
        copy.nullStatusChangedInAssert = this.nullStatusChangedInAssert;
        return copy;
    }

    public UnconditionalFlowInfo discardInitializationInfo() {
        if (this == DEAD_END) {
            return this;
        }
        this.potentialInits = 0L;
        this.definiteInits = 0L;
        if (this.extra != null) {
            int i = 0;
            int length = this.extra[0].length;
            while (i < length) {
                this.extra[1][i] = 0L;
                this.extra[0][i] = 0L;
                ++i;
            }
        }
        return this;
    }

    public UnconditionalFlowInfo discardNonFieldInitializations() {
        int limit = this.maxFieldCount;
        if (limit < 64) {
            long mask = (1L << limit) - 1L;
            this.definiteInits &= mask;
            this.potentialInits &= mask;
            this.nullBit1 &= mask;
            this.nullBit2 &= mask;
            this.nullBit3 &= mask;
            this.nullBit4 &= mask;
        }
        if (this.extra == null) {
            return this;
        }
        int vectorIndex = limit / 64 - 1;
        int length = this.extra[0].length;
        if (vectorIndex >= length) {
            return this;
        }
        if (vectorIndex >= 0) {
            long mask = (1L << limit % 64) - 1L;
            int j = 0;
            while (j < 6) {
                long[] lArray = this.extra[j];
                int n = vectorIndex;
                lArray[n] = lArray[n] & mask;
                ++j;
            }
        }
        int i = vectorIndex + 1;
        while (i < length) {
            int j = 0;
            while (j < 6) {
                this.extra[j][i] = 0L;
                ++j;
            }
            ++i;
        }
        return this;
    }

    public FlowInfo initsWhenFalse() {
        return this;
    }

    public FlowInfo initsWhenTrue() {
        return this;
    }

    private final boolean isDefinitelyAssigned(int position) {
        if (position < 64) {
            return (this.definiteInits & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[0][vectorIndex] & 1L << position % 64) != 0L;
    }

    public final boolean isDefinitelyAssigned(FieldBinding field) {
        if ((this.tagBits & 1) != 0) {
            return true;
        }
        return this.isDefinitelyAssigned(field.id);
    }

    public final boolean isDefinitelyAssigned(LocalVariableBinding local) {
        if ((this.tagBits & 1) != 0 && (local.declaration.bits & 0x40000000) != 0) {
            return true;
        }
        return this.isDefinitelyAssigned(local.id + this.maxFieldCount);
    }

    public final boolean isDefinitelyNonNull(LocalVariableBinding local) {
        if ((this.tagBits & 3) != 0 || (this.tagBits & 4) == 0) {
            return false;
        }
        if ((local.type.tagBits & 2L) != 0L || local.constant() != Constant.NotAConstant) {
            return true;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit3 & (this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL | this.nullBit4) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[4][vectorIndex] & (this.extra[3][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | this.extra[5][vectorIndex]) & 1L << position % 64) != 0L;
    }

    public final boolean isDefinitelyNull(LocalVariableBinding local) {
        if ((this.tagBits & 3) != 0 || (this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit2 & (this.nullBit3 ^ 0xFFFFFFFFFFFFFFFFL | this.nullBit4 ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[3][vectorIndex] & (this.extra[4][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | this.extra[5][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position % 64) != 0L;
    }

    public final boolean isDefinitelyUnknown(LocalVariableBinding local) {
        if ((this.tagBits & 3) != 0 || (this.tagBits & 4) == 0) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit4 & (this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL) & (this.nullBit3 ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[5][vectorIndex] & (this.extra[3][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & (this.extra[4][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position % 64) != 0L;
    }

    private final boolean isPotentiallyAssigned(int position) {
        if (position < 64) {
            return (this.potentialInits & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[1][vectorIndex] & 1L << position % 64) != 0L;
    }

    public final boolean isPotentiallyAssigned(FieldBinding field) {
        return this.isPotentiallyAssigned(field.id);
    }

    public final boolean isPotentiallyAssigned(LocalVariableBinding local) {
        if (local.constant() != Constant.NotAConstant) {
            return true;
        }
        return this.isPotentiallyAssigned(local.id + this.maxFieldCount);
    }

    public final boolean isPotentiallyNonNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit3 & (this.nullBit1 ^ 0xFFFFFFFFFFFFFFFFL | this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[4][vectorIndex] & (this.extra[2][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | this.extra[3][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position % 64) != 0L;
    }

    public final boolean isPotentiallyNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit2 & (this.nullBit1 ^ 0xFFFFFFFFFFFFFFFFL | this.nullBit3 ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[3][vectorIndex] & (this.extra[2][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | this.extra[4][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & 1L << position % 64) != 0L;
    }

    public final boolean isPotentiallyUnknown(LocalVariableBinding local) {
        if ((this.tagBits & 3) != 0 || (this.tagBits & 4) == 0) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit4 & (this.nullBit1 ^ 0xFFFFFFFFFFFFFFFFL | (this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL) & (this.nullBit3 ^ 0xFFFFFFFFFFFFFFFFL)) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[5][vectorIndex] & (this.extra[2][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | (this.extra[3][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL) & (this.extra[4][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL)) & 1L << position % 64) != 0L;
    }

    public final boolean isProtectedNonNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit3 & this.nullBit4 & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[4][vectorIndex] & this.extra[5][vectorIndex] & 1L << position % 64) != 0L;
    }

    public final boolean isProtectedNull(LocalVariableBinding local) {
        if ((this.tagBits & 4) == 0 || (local.type.tagBits & 2L) != 0L) {
            return false;
        }
        int position = local.id + this.maxFieldCount;
        if (position < 64) {
            return (this.nullBit1 & this.nullBit2 & (this.nullBit3 ^ this.nullBit4) & 1L << position) != 0L;
        }
        if (this.extra == null) {
            return false;
        }
        int vectorIndex = position / 64 - 1;
        if (vectorIndex >= this.extra[0].length) {
            return false;
        }
        return (this.extra[2][vectorIndex] & this.extra[3][vectorIndex] & (this.extra[4][vectorIndex] ^ this.extra[5][vectorIndex]) & 1L << position % 64) != 0L;
    }

    protected static boolean isTrue(boolean expression, String message) {
        if (!expression) {
            throw new AssertionFailedException("assertion failed: " + message);
        }
        return expression;
    }

    public void markAsComparedEqualToNonNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                long a1 = this.nullBit1;
                long a2 = this.nullBit2;
                long na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                long a3 = this.nullBit3;
                long a4 = this.nullBit4;
                if ((mask & a1 & na2 & (a3 ^ 0xFFFFFFFFFFFFFFFFL) & a4) != 0L) {
                    this.nullBit4 &= mask ^ 0xFFFFFFFFFFFFFFFFL;
                } else if ((mask & a1 & na2 & a3) == 0L) {
                    this.nullBit4 |= mask;
                    if ((mask & a1) == 0L) {
                        if ((mask & a2 & (a3 ^ a4)) != 0L) {
                            this.nullBit2 &= mask ^ 0xFFFFFFFFFFFFFFFFL;
                        } else if ((mask & (a2 | a3 | a4)) == 0L) {
                            this.nullBit2 |= mask;
                        }
                    }
                }
                this.nullBit1 |= mask;
                this.nullBit3 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int newLength = vectorIndex + 1;
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[newLength];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long mask = 1L << position % 64;
                long a1 = this.extra[2][vectorIndex];
                long a2 = this.extra[3][vectorIndex];
                long na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                long a3 = this.extra[4][vectorIndex];
                long a4 = this.extra[5][vectorIndex];
                if ((mask & a1 & na2 & (a3 ^ 0xFFFFFFFFFFFFFFFFL) & a4) != 0L) {
                    long[] lArray = this.extra[5];
                    int n = vectorIndex;
                    lArray[n] = lArray[n] & (mask ^ 0xFFFFFFFFFFFFFFFFL);
                } else if ((mask & a1 & na2 & a3) == 0L) {
                    long[] lArray = this.extra[5];
                    int n = vectorIndex;
                    lArray[n] = lArray[n] | mask;
                    if ((mask & a1) == 0L) {
                        if ((mask & a2 & (a3 ^ a4)) != 0L) {
                            long[] lArray2 = this.extra[3];
                            int n2 = vectorIndex;
                            lArray2[n2] = lArray2[n2] & (mask ^ 0xFFFFFFFFFFFFFFFFL);
                        } else if ((mask & (a2 | a3 | a4)) == 0L) {
                            long[] lArray3 = this.extra[3];
                            int n3 = vectorIndex;
                            lArray3[n3] = lArray3[n3] | mask;
                        }
                    }
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                lArray[n] = lArray[n] | mask;
                long[] lArray4 = this.extra[4];
                int n4 = vectorIndex;
                lArray4[n4] = lArray4[n4] | mask;
            }
        }
    }

    public void markAsComparedEqualToNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                if ((mask & this.nullBit1) != 0L) {
                    if ((mask & (this.nullBit2 ^ 0xFFFFFFFFFFFFFFFFL | this.nullBit3 | this.nullBit4 ^ 0xFFFFFFFFFFFFFFFFL)) != 0L) {
                        this.nullBit4 &= mask ^ 0xFFFFFFFFFFFFFFFFL;
                    }
                } else if ((mask & this.nullBit4) != 0L) {
                    this.nullBit3 &= mask ^ 0xFFFFFFFFFFFFFFFFL;
                } else if ((mask & this.nullBit2) != 0L) {
                    this.nullBit3 &= mask ^ 0xFFFFFFFFFFFFFFFFL;
                    this.nullBit4 |= mask;
                } else {
                    this.nullBit3 |= mask;
                }
                this.nullBit1 |= mask;
                this.nullBit2 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                long mask = 1L << position % 64;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int newLength = vectorIndex + 1;
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[newLength];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                if ((mask & this.extra[2][vectorIndex]) != 0L) {
                    if ((mask & (this.extra[3][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL | this.extra[4][vectorIndex] | this.extra[5][vectorIndex] ^ 0xFFFFFFFFFFFFFFFFL)) != 0L) {
                        long[] lArray = this.extra[5];
                        int n = vectorIndex;
                        lArray[n] = lArray[n] & (mask ^ 0xFFFFFFFFFFFFFFFFL);
                    }
                } else if ((mask & this.extra[5][vectorIndex]) != 0L) {
                    long[] lArray = this.extra[4];
                    int n = vectorIndex;
                    lArray[n] = lArray[n] & (mask ^ 0xFFFFFFFFFFFFFFFFL);
                } else if ((mask & this.extra[3][vectorIndex]) != 0L) {
                    long[] lArray = this.extra[4];
                    int n = vectorIndex;
                    lArray[n] = lArray[n] & (mask ^ 0xFFFFFFFFFFFFFFFFL);
                    long[] lArray2 = this.extra[5];
                    int n2 = vectorIndex;
                    lArray2[n2] = lArray2[n2] | mask;
                } else {
                    long[] lArray = this.extra[4];
                    int n = vectorIndex;
                    lArray[n] = lArray[n] | mask;
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                lArray[n] = lArray[n] | mask;
                long[] lArray3 = this.extra[3];
                int n3 = vectorIndex;
                lArray3[n3] = lArray3[n3] | mask;
            }
        }
    }

    private final void markAsDefinitelyAssigned(int position) {
        if (this != DEAD_END) {
            if (position < 64) {
                long mask = 1L << position;
                this.definiteInits |= mask;
                this.potentialInits |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[0];
                int n = vectorIndex;
                long mask = 1L << position % 64;
                lArray[n] = lArray[n] | mask;
                long[] lArray2 = this.extra[1];
                int n2 = vectorIndex;
                lArray2[n2] = lArray2[n2] | mask;
            }
        }
    }

    public void markAsDefinitelyAssigned(FieldBinding field) {
        if (this != DEAD_END) {
            this.markAsDefinitelyAssigned(field.id);
        }
    }

    public void markAsDefinitelyAssigned(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.markAsDefinitelyAssigned(local.id + this.maxFieldCount);
        }
    }

    public void markAsDefinitelyNonNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                this.nullBit1 |= mask;
                this.nullBit3 |= mask;
                this.nullBit2 &= (mask ^= 0xFFFFFFFFFFFFFFFFL);
                this.nullBit4 &= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                long mask = 1L << position % 64;
                lArray[n] = lArray[n] | mask;
                long[] lArray2 = this.extra[4];
                int n2 = vectorIndex;
                lArray2[n2] = lArray2[n2] | mask;
                long[] lArray3 = this.extra[3];
                int n3 = vectorIndex;
                lArray3[n3] = lArray3[n3] & (mask ^= 0xFFFFFFFFFFFFFFFFL);
                long[] lArray4 = this.extra[5];
                int n4 = vectorIndex;
                lArray4[n4] = lArray4[n4] & mask;
            }
        }
    }

    public void markAsDefinitelyNull(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                this.nullBit1 |= mask;
                this.nullBit2 |= mask;
                this.nullBit3 &= (mask ^= 0xFFFFFFFFFFFFFFFFL);
                this.nullBit4 &= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                long mask = 1L << position % 64;
                lArray[n] = lArray[n] | mask;
                long[] lArray2 = this.extra[3];
                int n2 = vectorIndex;
                lArray2[n2] = lArray2[n2] | mask;
                long[] lArray3 = this.extra[4];
                int n3 = vectorIndex;
                lArray3[n3] = lArray3[n3] & (mask ^= 0xFFFFFFFFFFFFFFFFL);
                long[] lArray4 = this.extra[5];
                int n4 = vectorIndex;
                lArray4[n4] = lArray4[n4] & mask;
            }
        }
    }

    public void markAsDefinitelyUnknown(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                this.nullBit1 |= mask;
                this.nullBit4 |= mask;
                this.nullBit2 &= (mask ^= 0xFFFFFFFFFFFFFFFFL);
                this.nullBit3 &= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                long mask = 1L << position % 64;
                lArray[n] = lArray[n] | mask;
                long[] lArray2 = this.extra[5];
                int n2 = vectorIndex;
                lArray2[n2] = lArray2[n2] | mask;
                long[] lArray3 = this.extra[3];
                int n3 = vectorIndex;
                lArray3[n3] = lArray3[n3] & (mask ^= 0xFFFFFFFFFFFFFFFFL);
                long[] lArray4 = this.extra[4];
                int n4 = vectorIndex;
                lArray4[n4] = lArray4[n4] & mask;
            }
        }
    }

    public void resetNullInfo(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position ^ 0xFFFFFFFFFFFFFFFFL;
                this.nullBit1 &= mask;
                this.nullBit2 &= mask;
                this.nullBit3 &= mask;
                this.nullBit4 &= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null || vectorIndex >= this.extra[2].length) {
                    return;
                }
                long[] lArray = this.extra[2];
                int n = vectorIndex;
                long mask = 1L << position % 64 ^ 0xFFFFFFFFFFFFFFFFL;
                lArray[n] = lArray[n] & mask;
                long[] lArray2 = this.extra[3];
                int n2 = vectorIndex;
                lArray2[n2] = lArray2[n2] & mask;
                long[] lArray3 = this.extra[4];
                int n3 = vectorIndex;
                lArray3[n3] = lArray3[n3] & mask;
                long[] lArray4 = this.extra[5];
                int n4 = vectorIndex;
                lArray4[n4] = lArray4[n4] & mask;
            }
        }
    }

    public void markPotentiallyUnknownBit(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                UnconditionalFlowInfo.isTrue((this.nullBit1 & mask) == 0L, "Adding 'unknown' mark in unexpected state");
                this.nullBit4 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long mask = 1L << position % 64;
                UnconditionalFlowInfo.isTrue((this.extra[2][vectorIndex] & mask) == 0L, "Adding 'unknown' mark in unexpected state");
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
                UnconditionalFlowInfo.isTrue((this.nullBit1 & mask) == 0L, "Adding 'potentially null' mark in unexpected state");
                this.nullBit2 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
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
                UnconditionalFlowInfo.isTrue((this.extra[2][vectorIndex] & mask) == 0L, "Adding 'potentially null' mark in unexpected state");
            }
        }
    }

    public void markPotentiallyNonNullBit(LocalVariableBinding local) {
        if (this != DEAD_END) {
            this.tagBits |= 4;
            int position = local.id + this.maxFieldCount;
            if (position < 64) {
                long mask = 1L << position;
                UnconditionalFlowInfo.isTrue((this.nullBit1 & mask) == 0L, "Adding 'potentially non-null' mark in unexpected state");
                this.nullBit3 |= mask;
            } else {
                int vectorIndex = position / 64 - 1;
                if (this.extra == null) {
                    int length = vectorIndex + 1;
                    this.extra = new long[6][];
                    int j = 0;
                    while (j < 6) {
                        this.extra[j] = new long[length];
                        ++j;
                    }
                } else {
                    int oldLength = this.extra[0].length;
                    if (vectorIndex >= oldLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[vectorIndex + 1];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, oldLength);
                            ++j;
                        }
                    }
                }
                long mask = 1L << position % 64;
                UnconditionalFlowInfo.isTrue((this.extra[2][vectorIndex] & mask) == 0L, "Adding 'potentially non-null' mark in unexpected state");
                long[] lArray = this.extra[4];
                int n = vectorIndex;
                lArray[n] = lArray[n] | mask;
            }
        }
    }

    public UnconditionalFlowInfo mergedWith(UnconditionalFlowInfo otherInits) {
        long na1;
        long nb1;
        long nb3;
        long na3;
        long na4;
        long nb4;
        long na2;
        long b4;
        long b3;
        long a1;
        long nb2;
        long b2;
        long b1;
        long a4;
        long a3;
        long a2;
        if ((otherInits.tagBits & 1) != 0 && this != DEAD_END) {
            this.combineNullStatusChangeInAssertInfo(otherInits);
            return this;
        }
        if ((this.tagBits & 1) != 0) {
            otherInits.combineNullStatusChangeInAssertInfo(this);
            return (UnconditionalFlowInfo)otherInits.copy();
        }
        this.definiteInits &= otherInits.definiteInits;
        this.potentialInits |= otherInits.potentialInits;
        boolean thisHasNulls = (this.tagBits & 4) != 0;
        boolean otherHasNulls = (otherInits.tagBits & 4) != 0;
        boolean thisHadNulls = thisHasNulls;
        if ((otherInits.tagBits & 2) != 0) {
            otherHasNulls = false;
        } else if ((this.tagBits & 2) != 0) {
            this.nullBit1 = otherInits.nullBit1;
            this.nullBit2 = otherInits.nullBit2;
            this.nullBit3 = otherInits.nullBit3;
            this.nullBit4 = otherInits.nullBit4;
            thisHadNulls = false;
            thisHasNulls = otherHasNulls;
            this.tagBits = otherInits.tagBits;
        } else if (thisHadNulls) {
            if (otherHasNulls) {
                a2 = this.nullBit2;
                a3 = this.nullBit3;
                a4 = this.nullBit4;
                b1 = otherInits.nullBit1;
                b2 = otherInits.nullBit2;
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                a1 = this.nullBit1;
                b3 = otherInits.nullBit3;
                b4 = otherInits.nullBit4;
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                nb4 = b4 ^ 0xFFFFFFFFFFFFFFFFL;
                na4 = a4 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL;
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
                this.nullBit1 = a2 & a3 & a4 & b1 & nb2 | a1 & (b1 & (a3 & a4 & b3 & b4 | na2 & nb2 & (nb4 | na4 | na3 & nb3) | a2 & b2 & ((na4 | na3) & (nb4 | nb3))) | na2 & b2 & b3 & b4);
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                this.nullBit2 = b2 & (nb3 | nb1 | a3 & (a4 | na1) & nb4) | a2 & (b2 | na4 & b3 & (b4 | nb1) | na3 | na1);
                this.nullBit3 = b3 & (nb2 & b4 | nb1 | a3 & (na4 & nb4 | a4 & b4)) | a3 & (na2 & a4 | na1) | (a2 | na1) & b1 & nb2 & nb4 | a1 & na2 & na4 & (b2 | nb1);
                this.nullBit4 = na3 & (nb1 & nb3 & b4 | b1 & (nb2 & nb3 | a4 & b2 & nb4) | na1 & a4 & (nb3 | b1 & b2)) | a3 & a4 & (b3 & b4 | b1 & nb2) | na2 & (nb1 & b4 | b1 & nb3 | na1 & a4) & nb2 | a1 & (na3 & (nb3 & b4 | b1 & b2 & b3 & nb4 | na2 & (nb3 | nb2)) | na2 & b3 & b4 | a2 & (nb1 & b4 | a3 & na4 & b1) & nb3);
                long ax = (a1 ^ 0xFFFFFFFFFFFFFFFFL) & a2 & a3 & a4;
                long bx = (b1 ^ 0xFFFFFFFFFFFFFFFFL) & b2 & b3 & b4;
                long x = ax | bx;
                if (x != 0L) {
                    this.nullBit1 &= x ^ 0xFFFFFFFFFFFFFFFFL;
                    this.nullBit2 |= x;
                    this.nullBit3 |= x;
                    this.nullBit4 |= x;
                }
            } else {
                a1 = this.nullBit1;
                this.nullBit1 = 0L;
                a2 = this.nullBit2;
                a3 = this.nullBit3;
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL | na1;
                this.nullBit2 = a2 & na3;
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                a4 = this.nullBit4;
                this.nullBit3 = a3 & (na2 & a4 | na1) | a1 & na2 & (a4 ^ 0xFFFFFFFFFFFFFFFFL);
                this.nullBit4 = (na3 | na2) & na1 & a4 | a1 & na3 & na2;
            }
        } else if (otherHasNulls) {
            this.nullBit1 = 0L;
            b2 = otherInits.nullBit2;
            b3 = otherInits.nullBit3;
            b1 = otherInits.nullBit1;
            nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
            nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL | nb1;
            this.nullBit2 = b2 & nb3;
            nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
            b4 = otherInits.nullBit4;
            this.nullBit3 = b3 & (nb2 & b4 | nb1) | b1 & nb2 & (b4 ^ 0xFFFFFFFFFFFFFFFFL);
            this.nullBit4 = (nb3 | nb2) & nb1 & b4 | b1 & nb3 & nb2;
            boolean bl = thisHasNulls = this.nullBit2 != 0L || this.nullBit3 != 0L || this.nullBit4 != 0L;
        }
        if (this.extra != null || otherInits.extra != null) {
            int mergeLimit = 0;
            int copyLimit = 0;
            int resetLimit = 0;
            if (this.extra != null) {
                if (otherInits.extra != null) {
                    int length = this.extra[0].length;
                    int otherLength = otherInits.extra[0].length;
                    if (length < otherLength) {
                        int j = 0;
                        while (j < 6) {
                            this.extra[j] = new long[otherLength];
                            System.arraycopy(this.extra[j], 0, this.extra[j], 0, length);
                            ++j;
                        }
                        mergeLimit = length;
                        copyLimit = otherLength;
                    } else {
                        mergeLimit = otherLength;
                        resetLimit = length;
                    }
                } else {
                    resetLimit = this.extra[0].length;
                }
            } else if (otherInits.extra != null) {
                int otherLength = otherInits.extra[0].length;
                this.extra = new long[6][];
                int j = 0;
                while (j < 6) {
                    this.extra[j] = new long[otherLength];
                    ++j;
                }
                System.arraycopy(otherInits.extra[1], 0, this.extra[1], 0, otherLength);
                copyLimit = otherLength;
            }
            int i = 0;
            while (i < mergeLimit) {
                long[] lArray = this.extra[0];
                int n = i;
                lArray[n] = lArray[n] & otherInits.extra[0][i];
                long[] lArray2 = this.extra[1];
                int n2 = i;
                lArray2[n2] = lArray2[n2] | otherInits.extra[1][i];
                ++i;
            }
            while (i < copyLimit) {
                this.extra[1][i] = otherInits.extra[1][i];
                ++i;
            }
            while (i < resetLimit) {
                this.extra[0][i] = 0L;
                ++i;
            }
            if (!otherHasNulls) {
                if (resetLimit < mergeLimit) {
                    resetLimit = mergeLimit;
                }
                copyLimit = 0;
                mergeLimit = 0;
            }
            if (!thisHadNulls) {
                resetLimit = 0;
            }
            i = 0;
            while (i < mergeLimit) {
                a2 = this.extra[3][i];
                a3 = this.extra[4][i];
                a4 = this.extra[5][i];
                b1 = otherInits.extra[2][i];
                b2 = otherInits.extra[3][i];
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                a1 = this.extra[2][i];
                b3 = otherInits.extra[4][i];
                b4 = otherInits.extra[5][i];
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                nb4 = b4 ^ 0xFFFFFFFFFFFFFFFFL;
                na4 = a4 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL;
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[2][i] = a2 & a3 & a4 & b1 & nb2 | a1 & (b1 & (a3 & a4 & b3 & b4 | na2 & nb2 & (nb4 | na4 | na3 & nb3) | a2 & b2 & ((na4 | na3) & (nb4 | nb3))) | na2 & b2 & b3 & b4);
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                this.extra[3][i] = b2 & (nb3 | nb1 | a3 & (a4 | na1) & nb4) | a2 & (b2 | na4 & b3 & (b4 | nb1) | na3 | na1);
                this.extra[4][i] = b3 & (nb2 & b4 | nb1 | a3 & (na4 & nb4 | a4 & b4)) | a3 & (na2 & a4 | na1) | (a2 | na1) & b1 & nb2 & nb4 | a1 & na2 & na4 & (b2 | nb1);
                this.extra[5][i] = na3 & (nb1 & nb3 & b4 | b1 & (nb2 & nb3 | a4 & b2 & nb4) | na1 & a4 & (nb3 | b1 & b2)) | a3 & a4 & (b3 & b4 | b1 & nb2) | na2 & (nb1 & b4 | b1 & nb3 | na1 & a4) & nb2 | a1 & (na3 & (nb3 & b4 | b1 & b2 & b3 & nb4 | na2 & (nb3 | nb2)) | na2 & b3 & b4 | a2 & (nb1 & b4 | a3 & na4 & b1) & nb3);
                long ax = (a1 ^ 0xFFFFFFFFFFFFFFFFL) & a2 & a3 & a4;
                long bx = (b1 ^ 0xFFFFFFFFFFFFFFFFL) & b2 & b3 & b4;
                long x = ax | bx;
                if (x != 0L) {
                    long[] lArray = this.extra[2];
                    int n = i;
                    lArray[n] = lArray[n] & (x ^ 0xFFFFFFFFFFFFFFFFL);
                    long[] lArray3 = this.extra[3];
                    int n3 = i;
                    lArray3[n3] = lArray3[n3] | x;
                    long[] lArray4 = this.extra[4];
                    int n4 = i;
                    lArray4[n4] = lArray4[n4] | x;
                    long[] lArray5 = this.extra[5];
                    int n5 = i;
                    lArray5[n5] = lArray5[n5] | x;
                }
                thisHasNulls = thisHasNulls || this.extra[3][i] != 0L || this.extra[4][i] != 0L || this.extra[5][i] != 0L;
                ++i;
            }
            while (i < copyLimit) {
                this.extra[2][i] = 0L;
                b2 = otherInits.extra[3][i];
                b3 = otherInits.extra[4][i];
                b1 = otherInits.extra[2][i];
                nb1 = b1 ^ 0xFFFFFFFFFFFFFFFFL;
                nb3 = b3 ^ 0xFFFFFFFFFFFFFFFFL | nb1;
                this.extra[3][i] = b2 & nb3;
                nb2 = b2 ^ 0xFFFFFFFFFFFFFFFFL;
                b4 = otherInits.extra[5][i];
                this.extra[4][i] = b3 & (nb2 & b4 | nb1) | b1 & nb2 & (b4 ^ 0xFFFFFFFFFFFFFFFFL);
                this.extra[5][i] = (nb3 | nb2) & nb1 & b4 | b1 & nb3 & nb2;
                thisHasNulls = thisHasNulls || this.extra[3][i] != 0L || this.extra[4][i] != 0L || this.extra[5][i] != 0L;
                ++i;
            }
            while (i < resetLimit) {
                a1 = this.extra[2][i];
                this.extra[2][i] = 0L;
                a2 = this.extra[3][i];
                a3 = this.extra[4][i];
                na1 = a1 ^ 0xFFFFFFFFFFFFFFFFL;
                na3 = a3 ^ 0xFFFFFFFFFFFFFFFFL | na1;
                this.extra[3][i] = a2 & na3;
                na2 = a2 ^ 0xFFFFFFFFFFFFFFFFL;
                a4 = this.extra[5][i];
                this.extra[4][i] = a3 & (na2 & a4 | na1) | a1 & na2 & (a4 ^ 0xFFFFFFFFFFFFFFFFL);
                this.extra[5][i] = (na3 | na2) & na1 & a4 | a1 & na3 & na2;
                thisHasNulls = thisHasNulls || this.extra[3][i] != 0L || this.extra[4][i] != 0L || this.extra[5][i] != 0L;
                ++i;
            }
        }
        this.combineNullStatusChangeInAssertInfo(otherInits);
        this.tagBits = thisHasNulls ? (this.tagBits |= 4) : (this.tagBits &= 0xFFFFFFFB);
        return this;
    }

    static int numberOfEnclosingFields(ReferenceBinding type) {
        int count = 0;
        type = type.enclosingType();
        while (type != null) {
            count += type.fieldCount();
            type = type.enclosingType();
        }
        return count;
    }

    public UnconditionalFlowInfo nullInfoLessUnconditionalCopy() {
        if (this == DEAD_END) {
            return this;
        }
        UnconditionalFlowInfo copy = new UnconditionalFlowInfo();
        copy.definiteInits = this.definiteInits;
        copy.potentialInits = this.potentialInits;
        copy.tagBits = this.tagBits & 0xFFFFFFFB;
        copy.maxFieldCount = this.maxFieldCount;
        copy.nullStatusChangedInAssert = this.nullStatusChangedInAssert;
        if (this.extra != null) {
            copy.extra = new long[6][];
            int length = this.extra[0].length;
            copy.extra[0] = new long[length];
            System.arraycopy(this.extra[0], 0, copy.extra[0], 0, length);
            copy.extra[1] = new long[length];
            System.arraycopy(this.extra[1], 0, copy.extra[1], 0, length);
            int j = 2;
            while (j < 6) {
                copy.extra[j] = new long[length];
                ++j;
            }
        }
        return copy;
    }

    public FlowInfo safeInitsWhenTrue() {
        return this.copy();
    }

    public FlowInfo setReachMode(int reachMode) {
        if (this == DEAD_END) {
            return this;
        }
        if (reachMode == 0) {
            this.tagBits &= 0xFFFFFFFC;
        } else if (reachMode == 2) {
            this.tagBits |= 2;
        } else {
            if ((this.tagBits & 3) == 0) {
                this.potentialInits = 0L;
                if (this.extra != null) {
                    int i = 0;
                    int length = this.extra[0].length;
                    while (i < length) {
                        this.extra[1][i] = 0L;
                        ++i;
                    }
                }
            }
            this.tagBits |= reachMode;
        }
        return this;
    }

    public String toString() {
        if (this == DEAD_END) {
            return "FlowInfo.DEAD_END";
        }
        if ((this.tagBits & 4) != 0) {
            if (this.extra == null) {
                return "FlowInfo<def: " + this.definiteInits + ", pot: " + this.potentialInits + ", reachable:" + ((this.tagBits & 3) == 0) + ", null: " + this.nullBit1 + this.nullBit2 + this.nullBit3 + this.nullBit4 + ">";
            }
            String def = "FlowInfo<def:[" + this.definiteInits;
            String pot = "], pot:[" + this.potentialInits;
            String nullS = ", null:[" + this.nullBit1 + this.nullBit2 + this.nullBit3 + this.nullBit4;
            int i = 0;
            int ceil = this.extra[0].length > 3 ? 3 : this.extra[0].length;
            while (i < ceil) {
                def = String.valueOf(def) + "," + this.extra[0][i];
                pot = String.valueOf(pot) + "," + this.extra[1][i];
                nullS = String.valueOf(nullS) + "," + this.extra[2][i] + this.extra[3][i] + this.extra[4][i] + this.extra[5][i];
                ++i;
            }
            if (ceil < this.extra[0].length) {
                def = String.valueOf(def) + ",...";
                pot = String.valueOf(pot) + ",...";
                nullS = String.valueOf(nullS) + ",...";
            }
            return String.valueOf(def) + pot + "], reachable:" + ((this.tagBits & 3) == 0) + nullS + "]>";
        }
        if (this.extra == null) {
            return "FlowInfo<def: " + this.definiteInits + ", pot: " + this.potentialInits + ", reachable:" + ((this.tagBits & 3) == 0) + ", no null info>";
        }
        String def = "FlowInfo<def:[" + this.definiteInits;
        String pot = "], pot:[" + this.potentialInits;
        int i = 0;
        int ceil = this.extra[0].length > 3 ? 3 : this.extra[0].length;
        while (i < ceil) {
            def = String.valueOf(def) + "," + this.extra[0][i];
            pot = String.valueOf(pot) + "," + this.extra[1][i];
            ++i;
        }
        if (ceil < this.extra[0].length) {
            def = String.valueOf(def) + ",...";
            pot = String.valueOf(pot) + ",...";
        }
        return String.valueOf(def) + pot + "], reachable:" + ((this.tagBits & 3) == 0) + ", no null info>";
    }

    public UnconditionalFlowInfo unconditionalCopy() {
        return (UnconditionalFlowInfo)this.copy();
    }

    public UnconditionalFlowInfo unconditionalFieldLessCopy() {
        int j;
        UnconditionalFlowInfo copy = new UnconditionalFlowInfo();
        copy.tagBits = this.tagBits;
        copy.maxFieldCount = this.maxFieldCount;
        int limit = this.maxFieldCount;
        if (limit < 64) {
            long mask = (1L << limit) - 1L ^ 0xFFFFFFFFFFFFFFFFL;
            copy.definiteInits = this.definiteInits & mask;
            copy.potentialInits = this.potentialInits & mask;
            copy.nullBit1 = this.nullBit1 & mask;
            copy.nullBit2 = this.nullBit2 & mask;
            copy.nullBit3 = this.nullBit3 & mask;
            copy.nullBit4 = this.nullBit4 & mask;
        }
        copy.nullStatusChangedInAssert = this.nullStatusChangedInAssert;
        if (this.extra == null) {
            return copy;
        }
        int vectorIndex = limit / 64 - 1;
        int length = this.extra[0].length;
        if (vectorIndex >= length) {
            return copy;
        }
        copy.extra = new long[6][];
        int copyStart = vectorIndex + 1;
        if (copyStart < length) {
            int copyLength = length - copyStart;
            int j2 = 0;
            while (j2 < 6) {
                copy.extra[j2] = new long[length];
                System.arraycopy(this.extra[j2], copyStart, copy.extra[j2], copyStart, copyLength);
                ++j2;
            }
        } else if (vectorIndex >= 0) {
            j = 0;
            while (j < 6) {
                copy.extra[j] = new long[length];
                ++j;
            }
        }
        if (vectorIndex >= 0) {
            long mask = (1L << limit % 64) - 1L ^ 0xFFFFFFFFFFFFFFFFL;
            j = 0;
            while (j < 6) {
                copy.extra[j][vectorIndex] = this.extra[j][vectorIndex] & mask;
                ++j;
            }
        }
        return copy;
    }

    public UnconditionalFlowInfo unconditionalInits() {
        return this;
    }

    public UnconditionalFlowInfo unconditionalInitsWithoutSideEffect() {
        return this;
    }

    public void markedAsNullOrNonNullInAssertExpression(LocalVariableBinding local) {
        int position = local.id + this.maxFieldCount;
        if (this.nullStatusChangedInAssert == null) {
            this.nullStatusChangedInAssert = new int[position + 1];
        } else {
            int oldLength = this.nullStatusChangedInAssert.length;
            if (position >= oldLength) {
                this.nullStatusChangedInAssert = new int[position + 1];
                System.arraycopy(this.nullStatusChangedInAssert, 0, this.nullStatusChangedInAssert, 0, oldLength);
            }
        }
        this.nullStatusChangedInAssert[position] = 1;
    }

    public boolean isMarkedAsNullOrNonNullInAssertExpression(LocalVariableBinding local) {
        int position = local.id + this.maxFieldCount;
        if (this.nullStatusChangedInAssert == null || position >= this.nullStatusChangedInAssert.length) {
            return false;
        }
        return this.nullStatusChangedInAssert[position] == 1;
    }

    private void combineNullStatusChangeInAssertInfo(UnconditionalFlowInfo otherInits) {
        if (this.nullStatusChangedInAssert != null || otherInits.nullStatusChangedInAssert != null) {
            if (this.nullStatusChangedInAssert != null) {
                if (otherInits.nullStatusChangedInAssert != null) {
                    if (otherInits.nullStatusChangedInAssert.length > this.nullStatusChangedInAssert.length) {
                        int mergedLength = otherInits.nullStatusChangedInAssert.length;
                        int length = this.nullStatusChangedInAssert.length;
                        this.nullStatusChangedInAssert = new int[mergedLength];
                        System.arraycopy(this.nullStatusChangedInAssert, 0, this.nullStatusChangedInAssert, 0, length);
                        int i = 0;
                        while (i < length) {
                            int n = i;
                            this.nullStatusChangedInAssert[n] = this.nullStatusChangedInAssert[n] | otherInits.nullStatusChangedInAssert[i];
                            ++i;
                        }
                        System.arraycopy(otherInits.nullStatusChangedInAssert, length, this.nullStatusChangedInAssert, length, mergedLength - length);
                    } else {
                        int i = 0;
                        while (i < otherInits.nullStatusChangedInAssert.length) {
                            int n = i;
                            this.nullStatusChangedInAssert[n] = this.nullStatusChangedInAssert[n] | otherInits.nullStatusChangedInAssert[i];
                            ++i;
                        }
                    }
                }
            } else if (otherInits.nullStatusChangedInAssert != null) {
                this.nullStatusChangedInAssert = otherInits.nullStatusChangedInAssert;
            }
        }
    }

    public static class AssertionFailedException
    extends RuntimeException {
        private static final long serialVersionUID = 1827352841030089703L;

        public AssertionFailedException(String message) {
            super(message);
        }
    }
}

