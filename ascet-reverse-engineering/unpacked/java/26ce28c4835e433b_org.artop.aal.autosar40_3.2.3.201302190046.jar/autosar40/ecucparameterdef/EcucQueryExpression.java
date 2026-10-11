/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucQueryExpression
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public EcucQuery getEcucQuery();

    public void setEcucQuery(EcucQuery var1);

    public EList<EcucDefinitionElement> getConfigElementDefGlobals();

    public EList<EcucDefinitionElement> getConfigElementDefLocals();

    public String getMixedText();

    public void setMixedText(String var1);
}

