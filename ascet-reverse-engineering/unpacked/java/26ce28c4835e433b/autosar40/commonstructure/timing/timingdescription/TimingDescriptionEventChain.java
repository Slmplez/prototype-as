/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingdescription;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TimingDescriptionEventChain
extends TimingDescription {
    public TimingDescriptionEvent getStimulus();

    public void setStimulus(TimingDescriptionEvent var1);

    public TimingDescriptionEvent getResponse();

    public void setResponse(TimingDescriptionEvent var1);

    public EList<TimingDescriptionEventChain> getSegments();

    public boolean stimulusresponse(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean Foreachsegmentthereexistsatleastonepathofsegmentsfromthestimulustotheresponse(DiagnosticChain var1, Map<Object, Object> var2);
}

