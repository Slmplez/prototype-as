/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticAudienceEnum;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DiagnosticCapabilityElement
extends ServiceNeeds {
    public EList<DiagnosticAudienceEnum> getAudiences();

    public void unsetAudiences();

    public boolean isSetAudiences();

    public String getDiagRequirement();

    public void setDiagRequirement(String var1);

    public void unsetDiagRequirement();

    public boolean isSetDiagRequirement();

    public Long getSecurityAccessLevel();

    public void setSecurityAccessLevel(Long var1);

    public void unsetSecurityAccessLevel();

    public boolean isSetSecurityAccessLevel();

    public PositiveIntegerDatatype getSecurityAccessLevelData();

    public void setSecurityAccessLevelData(PositiveIntegerDatatype var1);
}

