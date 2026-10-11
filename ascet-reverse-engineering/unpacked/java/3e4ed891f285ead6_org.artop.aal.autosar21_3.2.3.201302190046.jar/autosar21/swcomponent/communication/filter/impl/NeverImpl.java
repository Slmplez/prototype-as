/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.communication.filter.impl;

import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.Never;
import autosar21.swcomponent.communication.filter.impl.DataFilterImpl;
import org.eclipse.emf.ecore.EClass;

public class NeverImpl
extends DataFilterImpl
implements Never {
    protected NeverImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.NEVER;
    }
}

