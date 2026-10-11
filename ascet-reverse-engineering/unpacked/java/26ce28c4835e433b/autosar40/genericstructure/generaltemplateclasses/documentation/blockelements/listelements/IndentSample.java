/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ItemLabelPosEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IndentSample
extends ARObject {
    public LabeledList getLabeledList();

    public void setLabeledList(LabeledList var1);

    public ItemLabelPosEnum getItemLabelPos();

    public void setItemLabelPos(ItemLabelPosEnum var1);

    public void unsetItemLabelPos();

    public boolean isSetItemLabelPos();

    public EList<LOverviewParagraph> getL2s();
}

