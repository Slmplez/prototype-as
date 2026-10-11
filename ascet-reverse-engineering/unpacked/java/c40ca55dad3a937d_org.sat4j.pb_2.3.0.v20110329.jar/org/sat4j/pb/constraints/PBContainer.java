/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.constraints;

import java.math.BigInteger;

final class PBContainer {
    final int[] lits;
    final BigInteger[] coefs;
    final BigInteger degree;

    PBContainer(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        this.lits = nArray;
        this.coefs = bigIntegerArray;
        this.degree = bigInteger;
    }
}

