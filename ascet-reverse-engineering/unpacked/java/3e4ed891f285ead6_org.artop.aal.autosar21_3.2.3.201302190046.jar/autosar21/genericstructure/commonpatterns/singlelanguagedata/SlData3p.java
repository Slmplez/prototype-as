/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.genericstructure.commonpatterns.singlelanguagedata;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SlData3p
extends MixedContent3 {
    public EList<String> getXmlspaces();

    public void unsetXmlspaces();

    public boolean isSetXmlspaces();
}

