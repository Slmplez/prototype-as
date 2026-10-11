/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.genericstructure.commonpatterns.admindata;

import autosar21.genericstructure.commonpatterns.admindata.DocRevision;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AdminData
extends ARObject {
    public LEnum getLanguage();

    public void setLanguage(LEnum var1);

    public void unsetLanguage();

    public boolean isSetLanguage();

    public MlData10 getUsedLanguages();

    public void setUsedLanguages(MlData10 var1);

    public EList<DocRevision> getDocRevisions();

    public EList<Sdg> getSdgs();
}

