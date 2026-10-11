/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.MemberGetPortT;
import com.etas.amd620.core.ComponentSpecification.impl.GetSetPortBaseTImpl;
import org.eclipse.emf.ecore.EClass;

public class MemberGetPortTImpl
extends GetSetPortBaseTImpl
implements MemberGetPortT {
    protected MemberGetPortTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getMemberGetPortT();
    }
}

