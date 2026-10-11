/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package com.etas.amd620.core.Formulas;

import com.etas.amd620.core.Formulas.FormulasType;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface DocumentRoot
extends EObject {
    public FeatureMap getMixed();

    public EMap<String, String> getXMLNSPrefixMap();

    public EMap<String, String> getXSISchemaLocation();

    public FormulasType getFormulas();

    public void setFormulas(FormulasType var1);
}

