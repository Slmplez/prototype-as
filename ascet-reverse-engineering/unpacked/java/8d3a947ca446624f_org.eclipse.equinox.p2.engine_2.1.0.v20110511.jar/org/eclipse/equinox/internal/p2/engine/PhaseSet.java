/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.HashSet;
import java.util.List;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.ActionManager;
import org.eclipse.equinox.internal.p2.engine.EngineSession;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.MissingAction;
import org.eclipse.equinox.internal.p2.engine.MissingActionsException;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.osgi.util.NLS;

public class PhaseSet
implements IPhaseSet {
    private final Phase[] phases;

    public PhaseSet(Phase[] phases) {
        if (phases == null) {
            throw new IllegalArgumentException(Messages.null_phases);
        }
        this.phases = phases;
    }

    /*
     * Exception decompiling
     */
    public final MultiStatus perform(EngineSession session, Operand[] operands, IProgressMonitor monitor) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [10[CATCHBLOCK]], but top level block is 9[CATCHBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Loose catch block
     */
    public final IStatus validate(ActionManager actionManager, IProfile profile, Operand[] operands, ProvisioningContext context, IProgressMonitor monitor) {
        HashSet<MissingAction> missingActions = new HashSet<MissingAction>();
        int i = 0;
        while (i < this.phases.length) {
            Phase phase = this.phases[i];
            phase.actionManager = actionManager;
            try {
                int j = 0;
                while (j < operands.length) {
                    Operand operand = operands[j];
                    try {
                        List<ProvisioningAction> actions;
                        if (phase.isApplicable(operand) && (actions = phase.getActions(operand)) != null) {
                            int k = 0;
                            while (k < actions.size()) {
                                ProvisioningAction action = actions.get(k);
                                if (action instanceof MissingAction) {
                                    missingActions.add((MissingAction)action);
                                }
                                ++k;
                            }
                        }
                    }
                    catch (RuntimeException e) {
                        Status status = new Status(4, "org.eclipse.equinox.p2.engine", String.valueOf(e.getMessage()) + " " + this.getContextString(profile, phase, operand), (Throwable)e);
                        phase.actionManager = null;
                        return status;
                    }
                    catch (LinkageError e) {
                        Status status = new Status(4, "org.eclipse.equinox.p2.engine", String.valueOf(e.getMessage()) + " " + this.getContextString(profile, phase, operand), (Throwable)e);
                        phase.actionManager = null;
                        return status;
                    }
                    ++j;
                    continue;
                    {
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                    }
                }
            }
            finally {
                phase.actionManager = null;
            }
            ++i;
        }
        if (!missingActions.isEmpty()) {
            MissingAction[] missingActionsArray = missingActions.toArray(new MissingAction[missingActions.size()]);
            MissingActionsException exception = new MissingActionsException(missingActionsArray);
            return new Status(4, "org.eclipse.equinox.p2.engine", exception.getMessage(), (Throwable)((Object)exception));
        }
        return Status.OK_STATUS;
    }

    private String getContextString(IProfile profile, Phase phase, Operand operand) {
        return NLS.bind((String)Messages.session_context, (Object[])new Object[]{profile.getProfileId(), phase.getClass().getName(), operand.toString(), ""});
    }

    private int getTotalWork(int[] weights) {
        int sum = 0;
        int i = 0;
        while (i < weights.length) {
            sum += weights[i];
            ++i;
        }
        return sum;
    }

    private int[] getProgressWeights(Operand[] operands) {
        int[] weights = new int[this.phases.length];
        int i = 0;
        while (i < this.phases.length) {
            weights[i] = operands.length > 0 ? this.phases[i].weight * this.countApplicable(this.phases[i], operands) / operands.length : this.phases[i].weight;
            ++i;
        }
        return weights;
    }

    private int countApplicable(Phase phase, Operand[] operands) {
        int count = 0;
        int i = 0;
        while (i < operands.length) {
            if (phase.isApplicable(operands[i])) {
                ++count;
            }
            ++i;
        }
        return count;
    }

    public String[] getPhaseIds() {
        String[] ids = new String[this.phases.length];
        int i = 0;
        while (i < ids.length) {
            ids[i] = this.phases[i].phaseId;
            ++i;
        }
        return ids;
    }

    public Phase[] getPhases() {
        return this.phases;
    }
}

