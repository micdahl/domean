import * as assert from "assert";
import * as supertest from "supertest";

const request = supertest("http://localhost:3000");

describe("GET /", () => {
    it("should return 200 OK", (done) =>{
        request.get("/")
        .expect('Content-Type', /json/)
        .expect((result) => {
            assert.deepEqual(result.body, { hello: "world" });
        })
        .expect(200, done);
    });
});

