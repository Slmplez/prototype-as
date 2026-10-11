/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.softwarecomponentdocumentation;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwComponentDocumentation
extends ARObject {
    public Chapter getSwFeatureDef();

    public void setSwFeatureDef(Chapter var1);

    public Chapter getSwFeatureDesc();

    public void setSwFeatureDesc(Chapter var1);

    public Chapter getSwTestDesc();

    public void setSwTestDesc(Chapter var1);

    public Chapter getSwCalibrationNotes();

    public void setSwCalibrationNotes(Chapter var1);

    public Chapter getSwMaintenanceNotes();

    public void setSwMaintenanceNotes(Chapter var1);

    public Chapter getSwDiagnosticsNotes();

    public void setSwDiagnosticsNotes(Chapter var1);

    public Chapter getSwCarbDoc();

    public void setSwCarbDoc(Chapter var1);

    public EList<Chapter> getChapters();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

