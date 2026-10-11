/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd620.core.ComponentMain.RealizedRunnableT;
import com.etas.amd620.core.ComponentMain.RunnableT;
import com.etas.amd620.core.ComponentSpecification.EventT;

public class AmdASWCType
extends AbstractAmdComponent {
    public AmdASWCType(String name, String uuid, String nameSpace) {
        super(name);
        this.getAmdMainFragment().setAswc(name, uuid, nameSpace);
        this.getAmdSpecificationFragment().setAswcSpec();
    }

    public void addRunnable(RunnableT runT) {
        this.getAmdMainFragment().addRunnable(runT);
    }

    public void addRealizedRunnable(RealizedRunnableT runnableT) {
        this.getAmdMainFragment().addRealizedRunnable(runnableT);
    }

    public void addRunnableToSpecification(String runnableName, String specName) {
        this.getAmdSpecificationFragment().addRunnable(runnableName, specName);
    }

    public boolean hasMethodInSpec(String runnableName, String specName) {
        return this.getAmdSpecificationFragment().hasMethodInSpec(runnableName, specName);
    }

    public void addEvent(EventT amdEvent) {
        this.getAmdSpecificationFragment().addEvent(amdEvent);
    }

    public RealizedRunnableT getRealizedRunnable(String name) {
        return this.getAmdMainFragment().getRealizedRunnable(name);
    }
}

