/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.BlockConnectorT;
import org.eclipse.emf.ecore.EObject;

public interface BlockInterfaceT
extends EObject {
    public BlockConnectorT getExternalConnector();

    public void setExternalConnector(BlockConnectorT var1);

    public String getName();

    public void setName(String var1);
}

