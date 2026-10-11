/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.genericstructure.commonpatterns.specialdata;

import autosar3x.genericstructure.commonpatterns.specialdata.Sd;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdg;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdx;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SdgContents
extends ARObject {
    public Sdg getSdg();

    public void setSdg(Sdg var1);

    public EList<Sdx> getSdxs();

    public EList<Sd> getSds();

    public EList<Sdg> getSdgs();
}

