/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.pb.constraints.pb.PBConstr;

public interface IWatchPb
extends PBConstr {
    public BigInteger slackConstraint(BigInteger[] var1, BigInteger var2);
}

