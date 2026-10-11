/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.admindata;

import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;
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

    public MultiLanguagePlainText getUsedLanguages();

    public void setUsedLanguages(MultiLanguagePlainText var1);

    public EList<DocRevision> getDocRevisions();

    public EList<Sdg> getSdgs();
}

