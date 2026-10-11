/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPropertyOperand;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.internal.p2.engine.Profile;
import org.eclipse.equinox.internal.p2.engine.PropertyOperand;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Property
extends Phase {
    public Property(int weight) {
        super(PhaseSetFactory.PHASE_PROPERTY, weight);
    }

    @Override
    protected List<ProvisioningAction> getActions(Operand operand) {
        InstallableUnitOperand iuOperand;
        if (operand instanceof PropertyOperand) {
            return Collections.singletonList(new ProfilePropertyAction());
        }
        if (operand instanceof InstallableUnitOperand && (iuOperand = (InstallableUnitOperand)operand).first() != null) {
            if (iuOperand.second() != null) {
                return Collections.singletonList(new UpdateInstallableUnitProfilePropertiesAction());
            }
            return Collections.singletonList(new RemoveInstallableUnitProfilePropertiesAction());
        }
        return null;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class ProfilePropertyAction
    extends ProvisioningAction {
        @Override
        public IStatus execute(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            PropertyOperand propertyOperand = (PropertyOperand)parameters.get("operand");
            if (propertyOperand.second() == null) {
                this.removeProfileProperty(profile, propertyOperand);
            } else {
                this.setProfileProperty(profile, propertyOperand, false);
            }
            return null;
        }

        @Override
        public IStatus undo(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            PropertyOperand propertyOperand = (PropertyOperand)parameters.get("operand");
            if (propertyOperand.first() == null) {
                this.removeProfileProperty(profile, propertyOperand);
            } else {
                this.setProfileProperty(profile, propertyOperand, true);
            }
            return null;
        }

        private void setProfileProperty(Profile profile, PropertyOperand propertyOperand, boolean undo) {
            String value = (String)(undo ? propertyOperand.first() : propertyOperand.second());
            if (propertyOperand instanceof InstallableUnitPropertyOperand) {
                InstallableUnitPropertyOperand iuPropertyOperand = (InstallableUnitPropertyOperand)propertyOperand;
                profile.setInstallableUnitProperty(iuPropertyOperand.getInstallableUnit(), iuPropertyOperand.getKey(), value);
            } else {
                profile.setProperty(propertyOperand.getKey(), value);
            }
        }

        private void removeProfileProperty(Profile profile, PropertyOperand propertyOperand) {
            if (propertyOperand instanceof InstallableUnitPropertyOperand) {
                InstallableUnitPropertyOperand iuPropertyOperand = (InstallableUnitPropertyOperand)propertyOperand;
                profile.removeInstallableUnitProperty(iuPropertyOperand.getInstallableUnit(), iuPropertyOperand.getKey());
            } else {
                profile.removeProperty(propertyOperand.getKey());
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class RemoveInstallableUnitProfilePropertiesAction
    extends ProvisioningAction {
        Map<String, String> originalSourceProperties;
        Map<String, String> originalTargetProperties;

        @Override
        public IStatus execute(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            InstallableUnitOperand iuOperand = (InstallableUnitOperand)parameters.get("operand");
            IInstallableUnit source = iuOperand.first();
            this.originalSourceProperties = profile.getInstallableUnitProperties(source);
            profile.clearInstallableUnitProperties(source);
            return null;
        }

        @Override
        public IStatus undo(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            InstallableUnitOperand iuOperand = (InstallableUnitOperand)parameters.get("operand");
            IInstallableUnit source = iuOperand.first();
            profile.clearInstallableUnitProperties(source);
            profile.addInstallableUnitProperties(source, this.originalSourceProperties);
            return null;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class UpdateInstallableUnitProfilePropertiesAction
    extends ProvisioningAction {
        Map<String, String> originalSourceProperties;
        Map<String, String> originalTargetProperties;

        @Override
        public IStatus execute(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            InstallableUnitOperand iuOperand = (InstallableUnitOperand)parameters.get("operand");
            IInstallableUnit source = iuOperand.first();
            this.originalSourceProperties = profile.getInstallableUnitProperties(source);
            IInstallableUnit target = iuOperand.second();
            this.originalTargetProperties = profile.getInstallableUnitProperties(target);
            profile.addInstallableUnitProperties(target, this.originalSourceProperties);
            profile.clearInstallableUnitProperties(source);
            return null;
        }

        @Override
        public IStatus undo(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            InstallableUnitOperand iuOperand = (InstallableUnitOperand)parameters.get("operand");
            IInstallableUnit source = iuOperand.first();
            profile.clearInstallableUnitProperties(source);
            profile.addInstallableUnitProperties(source, this.originalSourceProperties);
            IInstallableUnit target = iuOperand.second();
            profile.clearInstallableUnitProperties(target);
            profile.addInstallableUnitProperties(target, this.originalTargetProperties);
            return null;
        }
    }
}

