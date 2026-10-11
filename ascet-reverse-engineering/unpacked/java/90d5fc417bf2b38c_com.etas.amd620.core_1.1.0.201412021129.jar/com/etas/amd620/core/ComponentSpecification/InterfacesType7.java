/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.MemberGetPortT;
import com.etas.amd620.core.ComponentSpecification.MemberSetPortT;
import com.etas.amd620.core.ComponentSpecification.MethodPortT;
import com.etas.amd620.core.ComponentSpecification.ReturnPortT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface InterfacesType7
extends EObject {
    public FeatureMap getGroup();

    public EList<MethodPortT> getMethodPort();

    public EList<ReturnPortT> getReturnPort();

    public EList<MemberSetPortT> getMemberSetPort();

    public EList<MemberGetPortT> getMemberGetPort();
}

