/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceAlgorithm;
import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import autosar40.commonstructure.serviceneeds.DtcKindEnum;
import autosar40.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DiagnosticEventNeeds
extends DiagnosticCapabilityElement {
    public Boolean getConsiderPtoStatus();

    public void setConsiderPtoStatus(Boolean var1);

    public void unsetConsiderPtoStatus();

    public boolean isSetConsiderPtoStatus();

    public DiagEventDebounceAlgorithm getDiagEventDebounceAlgorithm();

    public void setDiagEventDebounceAlgorithm(DiagEventDebounceAlgorithm var1);

    public DtcKindEnum getDtcKind();

    public void setDtcKind(DtcKindEnum var1);

    public void unsetDtcKind();

    public boolean isSetDtcKind();

    public Long getDtcNumber();

    public void setDtcNumber(Long var1);

    public void unsetDtcNumber();

    public boolean isSetDtcNumber();

    public FunctionInhibitionNeeds getInhibitingFid();

    public void setInhibitingFid(FunctionInhibitionNeeds var1);

    public EList<FunctionInhibitionNeeds> getInhibitingSecondaryFids();

    public PositiveIntegerDatatype getDtcNumberData();

    public void setDtcNumberData(PositiveIntegerDatatype var1);
}

