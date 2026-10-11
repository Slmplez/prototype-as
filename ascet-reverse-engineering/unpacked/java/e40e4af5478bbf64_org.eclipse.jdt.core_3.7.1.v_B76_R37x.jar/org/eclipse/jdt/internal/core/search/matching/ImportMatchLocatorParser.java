/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchLocatorParser;

class ImportMatchLocatorParser
extends MatchLocatorParser {
    boolean reportImportMatch;

    protected ImportMatchLocatorParser(ProblemReporter problemReporter, MatchLocator locator) {
        super(problemReporter, locator);
        this.reportImportMatch = this.patternFineGrain == 0 || (this.patternFineGrain & 0x8000) != 0;
    }

    protected void consumeStaticImportOnDemandDeclarationName() {
        super.consumeStaticImportOnDemandDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }

    protected void consumeSingleStaticImportDeclarationName() {
        super.consumeSingleStaticImportDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }

    protected void consumeSingleTypeImportDeclarationName() {
        super.consumeSingleTypeImportDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }

    protected void consumeTypeImportOnDemandDeclarationName() {
        super.consumeTypeImportOnDemandDeclarationName();
        if (this.reportImportMatch) {
            this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
        }
    }
}

