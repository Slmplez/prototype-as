/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitPatch
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.Arrays;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Explanation
implements Comparable<Explanation> {
    public static final Explanation OPTIONAL_REQUIREMENT = new Explanation(){

        public int orderValue() {
            return 6;
        }

        public String toString() {
            return Messages.Explanation_optionalDependency;
        }

        public int shortAnswer() {
            return 100;
        }
    };
    public static final int MISSING_REQUIREMENT = 1;
    public static final int VIOLATED_SINGLETON_CONSTRAINT = 2;
    public static final int IU_INSTALLED = 3;
    public static final int IU_TO_INSTALL = 4;
    public static final int VIOLATED_HARD_REQUIREMENT = 5;
    public static final int VIOLATED_PATCHED_HARD_REQUIREMENT = 6;
    public static final int NON_INSTALLABLE_ROOT = 7;
    public static final int OTHER_REASON = 100;

    protected Explanation() {
    }

    @Override
    public int compareTo(Explanation exp) {
        if (this.orderValue() == exp.orderValue()) {
            return this.toString().compareTo(exp.toString());
        }
        return this.orderValue() - exp.orderValue();
    }

    protected abstract int orderValue();

    public abstract int shortAnswer();

    public IStatus toStatus() {
        return new Status(4, "org.eclipse.equinox.p2.director", this.toString());
    }

    protected String getUserReadableName(IInstallableUnit iu) {
        if (iu == null) {
            return "";
        }
        String result = this.getLocalized(iu);
        if (result == null) {
            return iu.toString();
        }
        return new StringBuffer(String.valueOf(result)).append(' ').append(iu.getVersion()).append(" (").append(iu.toString()).append(')').toString();
    }

    private String getLocalized(IInstallableUnit iu) {
        String value = iu.getProperty("org.eclipse.equinox.p2.name");
        if (value == null || value.length() <= 1 || value.charAt(0) != '%') {
            return value;
        }
        String actualKey = value.substring(1);
        return iu.getProperty(new StringBuffer("df_LT.").append(actualKey).toString());
    }

    public static class HardRequirement
    extends Explanation {
        public final IInstallableUnit iu;
        public final IRequirement req;

        public HardRequirement(IInstallableUnit iu, IRequirement req) {
            this.iu = iu;
            this.req = req;
        }

        public int orderValue() {
            return 5;
        }

        public IStatus toStatus() {
            MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.director", 1, Messages.Explanation_unsatisfied, null);
            result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_from, (Object)this.getUserReadableName(this.iu))));
            result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_to, (Object)this.req)));
            return result;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_hardDependency, (Object)this.iu, (Object)this.req);
        }

        public int shortAnswer() {
            return 5;
        }
    }

    public static class IUInstalled
    extends Explanation {
        public final IInstallableUnit iu;

        public IUInstalled(IInstallableUnit iu) {
            this.iu = iu;
        }

        public int orderValue() {
            return 2;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_alreadyInstalled, (Object)this.iu);
        }

        public IStatus toStatus() {
            return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_alreadyInstalled, (Object)this.getUserReadableName(this.iu)));
        }

        public int shortAnswer() {
            return 3;
        }
    }

    public static class IUToInstall
    extends Explanation {
        public final IInstallableUnit iu;

        public IUToInstall(IInstallableUnit iu) {
            this.iu = iu;
        }

        public int orderValue() {
            return 1;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_toInstall, (Object)this.iu);
        }

        public IStatus toStatus() {
            return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_toInstall, (Object)this.getUserReadableName(this.iu)));
        }

        public int shortAnswer() {
            return 4;
        }
    }

    public static class MissingGreedyIU
    extends Explanation {
        public final IInstallableUnit iu;

        public MissingGreedyIU(IInstallableUnit iu) {
            this.iu = iu;
        }

        public int orderValue() {
            return 3;
        }

        public int shortAnswer() {
            return 1;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_missingNonGreedyRequired, (Object)this.iu);
        }

        public IStatus toStatus() {
            return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_missingNonGreedyRequired, (Object)this.getUserReadableName(this.iu)));
        }
    }

    public static class MissingIU
    extends Explanation {
        public final IInstallableUnit iu;
        public final IRequirement req;
        public boolean isEntryPoint;

        public MissingIU(IInstallableUnit iu, IRequirement req, boolean isEntryPoint) {
            this.iu = iu;
            this.req = req;
            this.isEntryPoint = isEntryPoint;
        }

        public int orderValue() {
            return 3;
        }

        public int shortAnswer() {
            return 1;
        }

        public String toString() {
            if (this.isEntryPoint) {
                return NLS.bind((String)Messages.Explanation_missingRootRequired, (Object)this.req);
            }
            if (this.req.getFilter() == null) {
                return NLS.bind((String)Messages.Explanation_missingRequired, (Object)this.iu, (Object)this.req);
            }
            return NLS.bind((String)Messages.Explanation_missingRequiredFilter, (Object[])new Object[]{this.req.getFilter(), this.iu, this.req});
        }

        public IStatus toStatus() {
            if (this.isEntryPoint) {
                return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_missingRootRequired, (Object)this.req));
            }
            if (this.req.getFilter() == null) {
                return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_missingRequired, (Object)this.getUserReadableName(this.iu), (Object)this.req));
            }
            return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_missingRequiredFilter, (Object[])new Object[]{this.req.getFilter(), this.getUserReadableName(this.iu), this.req}));
        }
    }

    public static class NotInstallableRoot
    extends Explanation {
        public final IRequirement req;

        public NotInstallableRoot(IRequirement req) {
            this.req = req;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_missingRootFilter, (Object)this.req);
        }

        public IStatus toStatus() {
            return new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_missingRootFilter, (Object)this.req));
        }

        protected int orderValue() {
            return 2;
        }

        public int shortAnswer() {
            return 7;
        }
    }

    public static class PatchedHardRequirement
    extends Explanation {
        public final IInstallableUnit iu;
        public final IInstallableUnitPatch patch;
        public final IRequirement req;

        public PatchedHardRequirement(IInstallableUnit iu, IInstallableUnitPatch patch) {
            this.iu = iu;
            this.req = null;
            this.patch = patch;
        }

        public PatchedHardRequirement(IInstallableUnit iu, IRequirement req, IInstallableUnitPatch patch) {
            this.iu = iu;
            this.req = req;
            this.patch = patch;
        }

        public int orderValue() {
            return 6;
        }

        public IStatus toStatus() {
            MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.director", 1, Messages.Explanation_unsatisfied, null);
            String fromString = String.valueOf(this.patch.toString()) + ' ' + this.getUserReadableName(this.iu);
            result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_fromPatch, (Object)fromString)));
            result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", NLS.bind((String)Messages.Explanation_to, (Object)this.req)));
            return result;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_patchedHardDependency, (Object[])new Object[]{this.patch, this.iu, this.req});
        }

        public int shortAnswer() {
            return 6;
        }
    }

    public static class Singleton
    extends Explanation {
        public final IInstallableUnit[] ius;

        public Singleton(IInstallableUnit[] ius) {
            this.ius = ius;
        }

        public int orderValue() {
            return 4;
        }

        public int shortAnswer() {
            return 2;
        }

        public IStatus toStatus() {
            MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.director", 1, NLS.bind((String)Messages.Explanation_singleton, (Object)""), null);
            int i = 0;
            while (i < this.ius.length) {
                result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.director", this.getUserReadableName(this.ius[i])));
                ++i;
            }
            return result;
        }

        public String toString() {
            return NLS.bind((String)Messages.Explanation_singleton, Arrays.asList(this.ius));
        }
    }
}

