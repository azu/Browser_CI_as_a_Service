buster.testCase("DOM Test", {
    setUp: function () {
        this.targetDOM = document.createElement("div");
        document.body.appendChild(this.targetDOM);
    },
    tearDown: function () {
        document.body.removeChild(this.targetDOM)
        this.targetDOM = null;
    },
    "test setAttribute": function () {
        var expectValue = "absolute";
        this.targetDOM.setAttribute("style", expectValue);
        var value = this.targetDOM.getAttribute("style");
        assert.same(value, expectValue);
    }
});
