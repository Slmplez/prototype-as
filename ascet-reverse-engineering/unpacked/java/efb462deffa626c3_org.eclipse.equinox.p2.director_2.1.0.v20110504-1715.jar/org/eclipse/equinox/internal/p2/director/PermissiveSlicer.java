/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.RequiredCapability
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.Map;
import org.eclipse.equinox.internal.p2.director.Slicer;
import org.eclipse.equinox.internal.p2.metadata.RequiredCapability;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PermissiveSlicer
extends Slicer {
    private boolean includeOptionalDependencies;
    private boolean everythingGreedy;
    private boolean considerFilter;
    private boolean considerOnlyStrictDependency;
    private boolean evalFilterTo;
    private boolean onlyFilteredRequirements;

    public PermissiveSlicer(IQueryable<IInstallableUnit> input, Map<String, String> context, boolean includeOptionalDependencies, boolean everythingGreedy, boolean evalFilterTo, boolean considerOnlyStrictDependency, boolean onlyFilteredRequirements) {
        super(input, context, true);
        this.considerFilter = context != null && context.size() > 1;
        this.includeOptionalDependencies = includeOptionalDependencies;
        this.everythingGreedy = everythingGreedy;
        this.evalFilterTo = evalFilterTo;
        this.considerOnlyStrictDependency = considerOnlyStrictDependency;
        this.onlyFilteredRequirements = onlyFilteredRequirements;
    }

    @Override
    protected boolean isApplicable(IInstallableUnit iu) {
        if (this.considerFilter) {
            return super.isApplicable(iu);
        }
        if (iu.getFilter() == null) {
            return true;
        }
        return this.evalFilterTo;
    }

    @Override
    protected boolean isApplicable(IRequirement req) {
        if (!this.includeOptionalDependencies && req.getMin() == 0) {
            return false;
        }
        if (this.considerOnlyStrictDependency && !RequiredCapability.isVersionStrict((IMatchExpression)req.getMatches())) {
            return false;
        }
        if (this.considerFilter) {
            if (this.onlyFilteredRequirements && req.getFilter() == null) {
                return false;
            }
            return super.isApplicable(req);
        }
        if (req.getFilter() == null) {
            return !this.onlyFilteredRequirements;
        }
        return this.evalFilterTo;
    }

    @Override
    protected boolean isGreedy(IRequirement req) {
        if (this.everythingGreedy) {
            return true;
        }
        return super.isGreedy(req);
    }
}

