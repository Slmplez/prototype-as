/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 */
package org.sat4j.pb.tools;

import java.util.Iterator;
import org.sat4j.core.Vec;
import org.sat4j.pb.tools.DependencyHelper;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplicationNamer<T, C> {
    private final DependencyHelper<T, C> helper;
    private IVec<IConstr> toName = new Vec();

    public ImplicationNamer(DependencyHelper<T, C> dependencyHelper, IVec<IConstr> iVec) {
        this.toName = iVec;
        this.helper = dependencyHelper;
    }

    public void named(C c) {
        Iterator iterator = this.toName.iterator();
        while (iterator.hasNext()) {
            this.helper.descs.put((IConstr)iterator.next(), c);
        }
    }
}

