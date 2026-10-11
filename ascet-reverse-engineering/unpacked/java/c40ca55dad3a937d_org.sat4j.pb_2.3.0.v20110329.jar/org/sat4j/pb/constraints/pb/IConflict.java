/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.VarActivityListener
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.core.VarActivityListener;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.IWatchPb;
import org.sat4j.pb.constraints.pb.PBConstr;

public interface IConflict
extends IDataStructurePB {
    public BigInteger resolve(PBConstr var1, int var2, VarActivityListener var3);

    public BigInteger slackConflict();

    public boolean isAssertive(int var1);

    public BigInteger reduceInConstraint(IWatchPb var1, BigInteger[] var2, int var3, BigInteger var4);

    public int getBacktrackLevel(int var1);

    public void updateSlack(int var1);

    public boolean slackIsCorrect(int var1);
}

