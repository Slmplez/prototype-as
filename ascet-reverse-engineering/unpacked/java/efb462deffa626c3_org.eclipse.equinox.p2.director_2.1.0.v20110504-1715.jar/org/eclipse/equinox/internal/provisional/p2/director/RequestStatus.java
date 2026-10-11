/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.provisional.p2.director;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.director.Explanation;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RequestStatus
extends Status {
    public static final byte ADDED = 0;
    public static final byte REMOVED = 1;
    private byte initialRequestType;
    private IInstallableUnit iu;
    private Set<Explanation> explanation;
    private Explanation detailedExplanation;
    private Set<IInstallableUnit> conflictingRootIUs;
    private Set<IInstallableUnit> conflictingInstalledIUs;

    public RequestStatus(IInstallableUnit iu, byte initialRequesType, int severity, Set<Explanation> explanation) {
        super(severity, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.RequestStatus_message, (Object)iu));
        this.iu = iu;
        this.initialRequestType = initialRequesType;
        this.explanation = explanation;
        this.conflictingRootIUs = new HashSet<IInstallableUnit>();
        this.conflictingInstalledIUs = new HashSet<IInstallableUnit>();
        if (explanation != null) {
            Iterator<Explanation> iterator = explanation.iterator();
            Explanation o = null;
            while (iterator.hasNext() && (o = iterator.next()) instanceof Explanation.IUToInstall) {
                this.conflictingRootIUs.add(((Explanation.IUToInstall)o).iu);
            }
            if (o instanceof Explanation.IUInstalled) {
                this.conflictingInstalledIUs.add(((Explanation.IUInstalled)o).iu);
                while (iterator.hasNext() && (o = iterator.next()) instanceof Explanation.IUInstalled) {
                    this.conflictingInstalledIUs.add(((Explanation.IUInstalled)o).iu);
                }
            }
            this.detailedExplanation = o;
        }
    }

    public byte getInitialRequestType() {
        return this.initialRequestType;
    }

    public IInstallableUnit getIu() {
        return this.iu;
    }

    public Set<IInstallableUnit> getConflictsWithInstalledRoots() {
        return this.conflictingRootIUs;
    }

    public Set<IInstallableUnit> getConflictsWithAnyRoots() {
        return this.conflictingInstalledIUs;
    }

    public Set<Explanation> getExplanations() {
        return this.explanation;
    }

    public int getShortExplanation() {
        return this.detailedExplanation.shortAnswer();
    }

    public Explanation getExplanationDetails() {
        return this.detailedExplanation;
    }
}

