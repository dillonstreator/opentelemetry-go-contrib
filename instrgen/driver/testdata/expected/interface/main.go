// Copyright The OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//nolint:all // Linter is executed at the same time as tests which leads to race conditions and failures.
package main

import (
	__atel_context "context"
	"github.com/dillonstreator/opentelemetry-go-contrib/instrgen/rtlib"
	. "github.com/dillonstreator/opentelemetry-go-contrib/instrgen/testdata/interface/app"
	. "github.com/dillonstreator/opentelemetry-go-contrib/instrgen/testdata/interface/serializer"
	__atel_otel "go.opentelemetry.io/otel"
)

func main() {
	__atel_ts := rtlib.NewTracingState()
	defer rtlib.Shutdown(__atel_ts)
	__atel_otel.SetTracerProvider(__atel_ts.Tp)
	__atel_ctx := __atel_context.Background()
	__atel_child_tracing_ctx, __atel_span := __atel_otel.Tracer("main").Start(__atel_ctx, "main")
	_ = __atel_child_tracing_ctx
	defer __atel_span.End()

	rtlib.AutotelEntryPoint()
	bs := BasicSerializer{}
	var s Serializer
	s = bs
	s.Serialize(__atel_child_tracing_ctx)
}
