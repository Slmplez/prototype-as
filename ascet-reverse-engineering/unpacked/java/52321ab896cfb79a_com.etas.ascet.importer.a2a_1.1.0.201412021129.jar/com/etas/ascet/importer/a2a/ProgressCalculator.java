/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a;

public class ProgressCalculator {
    protected static final int PROGRESS_OVERALL_TIME = 1000000;
    private int amountPerItem;
    private int amountForRest;

    ProgressCalculator(int number, int contingent) {
        int numberOfWorkeItems = number == 0 ? 1 : number;
        this.amountPerItem = 1000000 * contingent / (100 * numberOfWorkeItems);
        this.amountForRest = 1000000 * contingent / 100 % numberOfWorkeItems;
    }

    public int amountPerWorkItem() {
        return this.amountPerItem;
    }

    public int amountForRest() {
        return this.amountForRest;
    }
}

