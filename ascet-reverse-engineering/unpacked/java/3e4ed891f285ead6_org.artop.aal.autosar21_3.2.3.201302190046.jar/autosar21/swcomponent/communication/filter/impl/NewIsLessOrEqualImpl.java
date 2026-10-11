/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.communication.filter.impl;

import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.NewIsLessOrEqual;
import autosar21.swcomponent.communication.filter.impl.DataFilterImpl;
import org.eclipse.emf.ecore.EClass;

public class NewIsLessOrEqualImpl
extends DataFilterImpl
implements NewIsLessOrEqual {
    protected NewIsLessOrEqualImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.NEW_IS_LESS_OR_EQUAL;
    }
}

