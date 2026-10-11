/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Url
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public Xfile getXfile();

    public void setXfile(Xfile var1);

    public EList<String> getMimeTypes();

    public void unsetMimeTypes();

    public boolean isSetMimeTypes();

    public String getMixedText();

    public void setMixedText(String var1);
}

