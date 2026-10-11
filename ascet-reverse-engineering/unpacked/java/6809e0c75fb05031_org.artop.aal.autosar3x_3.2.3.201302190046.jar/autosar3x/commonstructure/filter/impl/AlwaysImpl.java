/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.filter.impl;

import autosar3x.commonstructure.filter.Always;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.impl.DataFilterImpl;
import org.eclipse.emf.ecore.EClass;

public class AlwaysImpl
extends DataFilterImpl
implements Always {
    protected AlwaysImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.ALWAYS;
    }
}

